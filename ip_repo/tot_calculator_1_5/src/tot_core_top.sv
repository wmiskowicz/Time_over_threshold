module tot_core_top #(
  parameter SAMPLE_NUM_PER_CYCLE = 1,
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

// ============================================================
// Internal signals
// ============================================================

// Edge detection

logic rise_detected;
logic fall_detected;

// ADC samples around threshold crossing

logic [11:0] rise_prev_sample;
logic [11:0] rise_curr_sample;

logic [11:0] fall_prev_sample;
logic [11:0] fall_curr_sample;

// Coarse timestamps

logic [WIDTH-1:0] rise_coarse_time;
logic [WIDTH-1:0] fall_coarse_time;

// Fractional timestamps

logic [FRAC-1:0] rise_frac;
logic [FRAC-1:0] fall_frac;

// ============================================================
// Coarse ToT core
// ============================================================

coarse_tot_core #(
  .SAMPLE_NUM_PER_CYCLE(SAMPLE_NUM_PER_CYCLE),
  .WIDTH(WIDTH)
)
u_coarse_tot_core
(
  .clk(clk),
  .rst_n(rst_n),

  .thr(thr),

  .sample(sample),

  .rise_detected(rise_detected),
  .fall_detected(fall_detected),

  .rise_prev_sample(rise_prev_sample),
  .rise_curr_sample(rise_curr_sample),

  .fall_prev_sample(fall_prev_sample),
  .fall_curr_sample(fall_curr_sample),

  .rise_coarse_time(rise_coarse_time),
  .fall_coarse_time(fall_coarse_time)
);

// ============================================================
// Rising edge interpolation
// ============================================================

rising_interp_exp #(
  .FRAC(FRAC)
)
u_rising_interp_exp
(
  .prev_sample(rise_prev_sample),
  .curr_sample(rise_curr_sample),

  .thr(thr[11:0]),

  .frac(rise_frac)
);

// ============================================================
// Falling edge interpolation
// ============================================================

falling_interp_exp #(
  .FRAC(FRAC)
)
u_falling_interp_exp
(
  .prev_sample(fall_prev_sample),
  .curr_sample(fall_curr_sample),

  .thr(thr[11:0]),

  .frac(fall_frac)
);

// ============================================================
// Final accumulator
// ============================================================

tot_final_accumulator #(
  .WIDTH(WIDTH),
  .FRAC(FRAC)
)
u_tot_final_accumulator
(
  .clk(clk),
  .rst_n(rst_n),

  .rise_valid(rise_detected),
  .fall_valid(fall_detected),

  .rise_coarse_time(rise_coarse_time),
  .fall_coarse_time(fall_coarse_time),

  .rise_frac(rise_frac),
  .fall_frac(fall_frac),

  .tot(tot),

  .t_leading_edge(t_leading_edge),

  .data_valid(data_valid)
);

endmodule
