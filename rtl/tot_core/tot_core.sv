module tot_core #(
  parameter SAMPLE_NUM_PER_CYCLE = 24,
  parameter WIDTH = 32,
  parameter FRAC = 8
)(
  input wire clk,
  input wire rst_n,

  input wire [WIDTH-1:0] thr,
  input wire [SAMPLE_NUM_PER_CYCLE*12-1:0] sample,

  output logic [WIDTH-1:0] tot,
  output logic [WIDTH-1:0] t_leading_edge,
  output logic data_valid
);

// ========================================================
// Types
// ========================================================

typedef logic [SAMPLE_NUM_PER_CYCLE-1:0][11:0]
adc_sample_vector_t;

// ========================================================
// Local variables
// ========================================================

adc_sample_vector_t adc_samples;

logic [11:0] sample_prev;

logic [WIDTH-1:0] coarse_counter;

logic pulse_active;

logic [WIDTH-1:0] rise_time;
logic [WIDTH-1:0] fall_time;

logic [FRAC-1:0] rise_frac;
logic [FRAC-1:0] fall_frac;

integer i;

// ========================================================
// Assignments
// ========================================================

assign adc_samples = adc_sample_vector_t'(sample);

// ========================================================
// Linear interpolation
// ========================================================

function automatic [FRAC-1:0]
interpolate_fraction
(
  input logic [11:0] prev,
  input logic [11:0] curr,
  input logic [11:0] threshold
);

  logic [12:0] numerator;
  logic [12:0] denominator;
  logic [FRAC+12:0] temp;

  begin

    if (curr > prev)
    begin
      numerator   = threshold - prev;
      denominator = curr - prev;

      temp = (numerator << FRAC) / denominator;

      interpolate_fraction = temp[FRAC-1:0];
    end
    else
    begin
      interpolate_fraction = '0;
    end

  end

endfunction

// ========================================================
// Main logic
// ========================================================

always_ff @(posedge clk or negedge rst_n)
begin

  if (!rst_n)
  begin

    sample_prev     <= '0;

    coarse_counter  <= '0;

    pulse_active    <= 1'b0;

    rise_time       <= '0;
    fall_time       <= '0;

    rise_frac       <= '0;
    fall_frac       <= '0;

    t_leading_edge  <= '0;

    tot             <= '0;

    data_valid      <= 1'b0;

  end
  else
  begin

    //------------------------------------------------------
    // default
    //------------------------------------------------------

    data_valid <= 1'b0;

    //------------------------------------------------------
    // global timestamp
    //------------------------------------------------------

    coarse_counter <= coarse_counter + 1'b1;

    //------------------------------------------------------
    // Iterate through all samples in current clock
    //------------------------------------------------------

    for (i = 0; i < SAMPLE_NUM_PER_CYCLE; i++)
    begin

      //----------------------------------------------------
      // Rising edge crossing
      //----------------------------------------------------

      if (
        !pulse_active &&
        (sample_prev < thr[11:0]) &&
        (adc_samples[i] >= thr[11:0])
      )
      begin

        rise_frac <= interpolate_fraction(
          sample_prev,
          adc_samples[i],
          thr[11:0]
        );

        rise_time <=
          (coarse_counter * SAMPLE_NUM_PER_CYCLE) + i;

        pulse_active <= 1'b1;

      end

      //----------------------------------------------------
      // Falling edge crossing
      //----------------------------------------------------

      if (
        pulse_active &&
        (sample_prev >= thr[11:0]) &&
        (adc_samples[i] < thr[11:0])
      )
      begin

        fall_frac <= interpolate_fraction(
          adc_samples[i],
          sample_prev,
          thr[11:0]
        );

        fall_time <=
          (coarse_counter * SAMPLE_NUM_PER_CYCLE) + i;

        pulse_active <= 1'b0;

        //--------------------------------------------------
        // Export leading edge
        //--------------------------------------------------

        t_leading_edge <=
          (rise_time << FRAC) | rise_frac;

        //--------------------------------------------------
        // Compute ToT
        //--------------------------------------------------

        tot <=
          (
            ((fall_time << FRAC) | fall_frac)
            -
            ((rise_time << FRAC) | rise_frac)
          );

        //--------------------------------------------------
        // data valid pulse
        //--------------------------------------------------

        data_valid <= 1'b1;

      end

      //----------------------------------------------------
      // Save previous sample
      //----------------------------------------------------

      sample_prev <= adc_samples[i];

    end

  end

end

endmodule
