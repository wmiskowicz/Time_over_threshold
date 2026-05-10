
module tot_core #(
  parameter SAMPLE_NUM_PER_CYCLE = 24,
  parameter WIDTH = 32
)(
  input wire clk,
  input wire rst_n,
  input wire [WIDTH-1:0] thr,
  input wire [SAMPLE_NUM_PER_CYCLE*12-1:0] sample,

  output logic [WIDTH-1:0] tot,
  output logic [WIDTH-1:0] t_leading_edge,
  output logic data_valid
);

typedef logic [SAMPLE_NUM_PER_CYCLE-1:0][11:0] adc_sample_vector_t;



// ----- Local parameter -----

// ----- Local variables -----

// ----- Signal assignments -----

// ----- Module logic -----



endmodule
