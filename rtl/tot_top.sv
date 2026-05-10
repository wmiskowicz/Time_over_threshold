module tot_top#(
  parameter int PORTS_WIDTH = 32
)(
  input wire clk_timestamp,
  input wire rst_n,
  input logic [PORTS_WIDTH-1:0] thr,

  // ADC data
  adc_bus_if.in bus_a,
  adc_bus_if.in bus_b,
  adc_bus_if.in bus_c,
  adc_bus_if.in bus_d,

  output logic [PORTS_WIDTH-1:0] tot_out,
  output logic [63:0]            t_leading_edge_out,
  output logic                   data_valid
);

// ----- Local parameters -----
localparam SAMPLES_PER_CLK = 24;

// ----- Local variables -----
wire clk_data; // 800MHz / 3 ~= 266.6MHz
wire [SAMPLES_PER_CLK*12-1:0] samples;

wire data_valid_in;
wire [PORTS_WIDTH-1:0] tot_in;
wire [PORTS_WIDTH-1:0] t_leading_edge_in;

// ----- Module logic -----


serdes_rx u_serdes_rx (
  .bus_a   (bus_a),
  .bus_b   (bus_b),
  .bus_c   (bus_c),
  .bus_d   (bus_d),
  .clk_data(clk_data),
  .rst_n   (rst_n),
  .rx_data (samples)
);

tot_core #(
  .SAMPLE_NUM_PER_CYCLE(SAMPLES_PER_CLK),
  .WIDTH(PORTS_WIDTH)
)
u_tot_core (
  .clk            (clk_data),
  .rst_n          (rst_n),
  .sample         (samples),
  .thr            (thr),


  .data_valid     (data_valid_in),
  .t_leading_edge (t_leading_edge_in),
  .tot            (tot_in)
);


output_sum #(
  .PORTS_WIDTH(PORTS_WIDTH)
)
u_output_sum (
  .clk_data          (clk_data), //266.6MHz
  .clk_timestamp     (clk_timestamp), //40MHz
  .rst_n             (rst_n),

  .t_leading_edge_in (t_leading_edge_in),
  .tot_in            (tot_in),
  .data_valid_in     (data_valid_in),

  .t_leading_edge_out(t_leading_edge_out),
  .tot_out           (tot_out),
  .data_valid_out    (data_valid)
);


  
endmodule
