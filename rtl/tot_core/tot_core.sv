module tot_core #(
  parameter SAMPLE_NUM_PER_CYCLE = 24,
  parameter WIDTH                = 32,
  parameter FRAC                 = 8,
  parameter LOG_LUT_BITS         = 8
)(
  input  wire clk,
  input  wire rst_n,

  input  wire [WIDTH-1:0] thr,
  input  wire [SAMPLE_NUM_PER_CYCLE*12-1:0] sample,

  // Total Time Over Threshold
  output logic [WIDTH-1:0] tot,

  // Timestamp rising edge
  output logic [WIDTH-1:0] t_leading_edge,

  // Timestamp falling edge
  output logic [WIDTH-1:0] t_falling_edge,

  // Width measured using falling edge timestamp
  output logic [WIDTH-1:0] tot_fall,

  // Result valid pulse
  output logic data_valid
);

// ============================================================
// Types
// ============================================================

typedef logic [SAMPLE_NUM_PER_CYCLE-1:0][11:0]
adc_sample_vector_t;

// ============================================================
// Local signals
// ============================================================

adc_sample_vector_t adc_samples;

logic [11:0] sample_prev;

logic [WIDTH-1:0] coarse_counter;

logic pulse_active;

logic [WIDTH-1:0] rise_time;
logic [WIDTH-1:0] fall_time;

logic [FRAC-1:0] rise_frac;
logic [FRAC-1:0] fall_frac;

logic [WIDTH-1:0] rise_timestamp_fp;
logic [WIDTH-1:0] fall_timestamp_fp;

// ============================================================
// Temporary variables
// ============================================================

logic [11:0] sample_prev_var;

logic pulse_active_var;

logic [WIDTH-1:0] rise_time_var;
logic [WIDTH-1:0] fall_time_var;

logic [FRAC-1:0] rise_frac_var;
logic [FRAC-1:0] fall_frac_var;

logic [WIDTH-1:0] rise_ts_var;
logic [WIDTH-1:0] fall_ts_var;

integer i;

// ============================================================
// Deserialize ADC vector
// ============================================================

assign adc_samples = adc_sample_vector_t'(sample);

// ============================================================
// LUT logarithm approximation
//
// FPGA-friendly approximation:
//
// ln(x2/x1) ~= log2(x2) - log2(x1)
//
// Small LUT:
//   log2(x) * 256
//
// NOTE:
// This is intentionally lightweight and synthesizable.
// ============================================================

function automatic [15:0]
log2_lut
(
  input logic [11:0] x
);

  begin

    casez (x)

      12'b1???????????: log2_lut = 16'd2816; // ~11*256
      12'b01??????????: log2_lut = 16'd2560;
      12'b001?????????: log2_lut = 16'd2304;
      12'b0001????????: log2_lut = 16'd2048;
      12'b00001???????: log2_lut = 16'd1792;
      12'b000001??????: log2_lut = 16'd1536;
      12'b0000001?????: log2_lut = 16'd1280;
      12'b00000001????: log2_lut = 16'd1024;
      12'b000000001???: log2_lut = 16'd768;
      12'b0000000001??: log2_lut = 16'd512;
      12'b00000000001?: log2_lut = 16'd256;
      12'b000000000001: log2_lut = 16'd0;

      default: log2_lut = 16'd0;

    endcase

  end

endfunction

// ============================================================
// Exponential interpolation
//
// Crossing estimation:
//
// t = ln(thr/prev) / ln(curr/prev)
//
// Approximated using:
//
// t = (log2(thr)-log2(prev))
//   / (log2(curr)-log2(prev))
//
// Output:
//
// fixed point fraction in range [0,1)
// ============================================================

function automatic [FRAC-1:0]
interpolate_fraction_exp
(
  input logic [11:0] prev,
  input logic [11:0] curr,
  input logic [11:0] threshold
);

  logic [15:0] log_prev;
  logic [15:0] log_curr;
  logic [15:0] log_thr;

  logic signed [16:0] numerator;
  logic signed [16:0] denominator;

  logic [31:0] temp;

  begin

    if (
      (prev > 0) &&
      (curr > 0) &&
      (curr != prev)
    )
    begin

      log_prev = log2_lut(prev);
      log_curr = log2_lut(curr);
      log_thr  = log2_lut(threshold);

      numerator   = log_thr - log_prev;
      denominator = log_curr - log_prev;

      if (denominator != 0)
      begin

        temp =
          (numerator <<< FRAC)
          /
          denominator;

        if (temp > ((1<<FRAC)-1))
          interpolate_fraction_exp =
            (1<<FRAC)-1;
        else
          interpolate_fraction_exp =
            temp[FRAC-1:0];

      end
      else
      begin
        interpolate_fraction_exp = '0;
      end

    end
    else
    begin
      interpolate_fraction_exp = '0;
    end

  end

endfunction

// ============================================================
// Main logic
// ============================================================

always_ff @(posedge clk or negedge rst_n)
begin

  if (!rst_n)
  begin

    sample_prev       <= '0;

    coarse_counter    <= '0;

    pulse_active      <= 1'b0;

    rise_time         <= '0;
    fall_time         <= '0;

    rise_frac         <= '0;
    fall_frac         <= '0;

    rise_timestamp_fp <= '0;
    fall_timestamp_fp <= '0;

    t_leading_edge    <= '0;
    t_falling_edge    <= '0;

    tot               <= '0;
    tot_fall          <= '0;

    data_valid        <= 1'b0;

  end
  else
  begin

    //--------------------------------------------------------
    // defaults
    //--------------------------------------------------------

    data_valid <= 1'b0;

    //--------------------------------------------------------
    // global sample counter
    //--------------------------------------------------------

    coarse_counter <= coarse_counter + 1'b1;

    sample_prev_var = sample_prev;

    pulse_active_var = pulse_active;

    rise_time_var = rise_time;
    fall_time_var = fall_time;

    rise_frac_var = rise_frac;
    fall_frac_var = fall_frac;

    rise_ts_var = rise_timestamp_fp;
    fall_ts_var = fall_timestamp_fp;

    //--------------------------------------------------------
    // Iterate samples
    //--------------------------------------------------------

    for (i = 0; i < SAMPLE_NUM_PER_CYCLE; i++)
    begin

      //------------------------------------------------------
      // Rising edge
      //------------------------------------------------------

      if (
        !pulse_active_var &&
        (sample_prev_var < thr[11:0]) &&
        (adc_samples[i] >= thr[11:0])
      )
      begin

        rise_frac_var =
          interpolate_fraction_exp(
            sample_prev_var,
            adc_samples[i],
            thr[11:0]
          );

        rise_time_var =
          (coarse_counter * SAMPLE_NUM_PER_CYCLE) + i;

        rise_ts_var =
          (rise_time_var << FRAC)
          |
          rise_frac_var;

        pulse_active_var = 1'b1;

      end

      //------------------------------------------------------
      // Falling edge
      //------------------------------------------------------

      if (
        pulse_active_var &&
        (sample_prev_var >= thr[11:0]) &&
        (adc_samples[i] < thr[11:0])
      )
      begin

        fall_frac_var =
          interpolate_fraction_exp(
            adc_samples[i],
            sample_prev_var,
            thr[11:0]
          );

        fall_time_var =
          (coarse_counter * SAMPLE_NUM_PER_CYCLE) + i;

        fall_ts_var =
          (fall_time_var << FRAC)
          |
          fall_frac_var;

        pulse_active_var = 1'b0;

        //----------------------------------------------------
        // Outputs
        //----------------------------------------------------

        t_leading_edge <= rise_ts_var;

        t_falling_edge <= fall_ts_var;

        //----------------------------------------------------
        // Standard ToT
        //----------------------------------------------------

        tot <=
          fall_ts_var
          -
          rise_ts_var;

        //----------------------------------------------------
        // Falling-edge ToT
        //----------------------------------------------------

        tot_fall <= fall_ts_var;

        //----------------------------------------------------
        // Valid pulse
        //----------------------------------------------------

        data_valid <= 1'b1;

      end

      //------------------------------------------------------
      // Update local previous sample
      //------------------------------------------------------

      sample_prev_var = adc_samples[i];

    end

    //--------------------------------------------------------
    // Commit state
    //--------------------------------------------------------

    sample_prev    <= sample_prev_var;

    pulse_active   <= pulse_active_var;

    rise_time      <= rise_time_var;
    fall_time      <= fall_time_var;

    rise_frac      <= rise_frac_var;
    fall_frac      <= fall_frac_var;

    rise_timestamp_fp <= rise_ts_var;
    fall_timestamp_fp <= fall_ts_var;

  end

end

endmodule