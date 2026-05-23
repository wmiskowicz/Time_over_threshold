module coarse_tot_core #(
  parameter SAMPLE_NUM_PER_CYCLE = 24,
  parameter WIDTH = 32
)(
  input  wire clk,
  input  wire rst_n,

  input  wire [WIDTH-1:0] thr,
  input  wire [SAMPLE_NUM_PER_CYCLE*12-1:0] sample,

  output logic rise_detected,
  output logic fall_detected,

  output logic [11:0] rise_prev_sample,
  output logic [11:0] rise_curr_sample,

  output logic [11:0] fall_prev_sample,
  output logic [11:0] fall_curr_sample,

  output logic [WIDTH-1:0] rise_coarse_time,
  output logic [WIDTH-1:0] fall_coarse_time
);

typedef logic [SAMPLE_NUM_PER_CYCLE-1:0][11:0]
adc_sample_vector_t;

adc_sample_vector_t adc_samples;

logic [11:0] sample_prev;

logic pulse_active;

logic [WIDTH-1:0] coarse_counter;

integer i;

assign adc_samples = adc_sample_vector_t'(sample);

always_ff @(posedge clk or negedge rst_n)
begin

  if (!rst_n)
  begin

    sample_prev      <= '0;

    pulse_active     <= 1'b0;

    coarse_counter   <= '0;

    rise_detected    <= 1'b0;
    fall_detected    <= 1'b0;

  end
  else
  begin

    rise_detected <= 1'b0;
    fall_detected <= 1'b0;

    coarse_counter <= coarse_counter + 1'b1;

    for (i=0;i<SAMPLE_NUM_PER_CYCLE;i++)
    begin

      //------------------------------------------------------
      // Rising edge
      //------------------------------------------------------

      if (
        !pulse_active &&
        (sample_prev < thr[11:0]) &&
        (adc_samples[i] >= thr[11:0])
      )
      begin

        rise_detected <= 1'b1;

        rise_prev_sample <= sample_prev;
        rise_curr_sample <= adc_samples[i];

        rise_coarse_time <=
          (coarse_counter * SAMPLE_NUM_PER_CYCLE) + i;

        pulse_active <= 1'b1;

      end

      //------------------------------------------------------
      // Falling edge
      //------------------------------------------------------

      if (
        pulse_active &&
        (sample_prev >= thr[11:0]) &&
        (adc_samples[i] < thr[11:0])
      )
      begin

        fall_detected <= 1'b1;

        fall_prev_sample <= sample_prev;
        fall_curr_sample <= adc_samples[i];

        fall_coarse_time <=
          (coarse_counter * SAMPLE_NUM_PER_CYCLE) + i;

        pulse_active <= 1'b0;

      end

      sample_prev <= adc_samples[i];

    end

  end

end

endmodule