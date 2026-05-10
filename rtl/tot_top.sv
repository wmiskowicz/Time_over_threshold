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

  output logic [PORTS_WIDTH-1:0] tot,
  output logic [PORTS_WIDTH-1:0] t_leading_edge
);

// ----- Local parameters -----
localparam SAMPLES_PER_CLK = 24;

// ----- Local variables -----

// ----- Module logic -----

wire clk_data;
wire [SAMPLES_PER_CLK*12-1:0] samples;

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


  .data_valid     (data_valid),
  .t_leading_edge (t_leading_edge),
  .tot            (tot)
);


  
endmodule
