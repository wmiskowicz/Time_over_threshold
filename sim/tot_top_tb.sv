`timescale 1ps / 10fs
`include "./adc_bfm/adc12dl3200_bfm.sv"

module tot_top_tb();

// ----- Local parameters -----
parameter ADC_CLK_FREQ = 800_000_000;
parameter TIMESTAMP_CLK_FREQ = 40_000_000;

localparam real ADC_HALF_PERIOD = 1_000_000_000_000.0 / (ADC_CLK_FREQ * 2.0);
localparam real TS_HALF_PERIOD  = 1_000_000_000_000.0 / (TIMESTAMP_CLK_FREQ * 2.0);

parameter VECTOR_WIDTH = 32;
localparam int  ADC_FRAME_LEN  = 8;


// ----- Local variables -----
logic clk_timestamp;
logic clk_adc_n, clk_adc_p;


// DUT signals
logic rst_n;
logic [VECTOR_WIDTH-1:0] thr;

logic [VECTOR_WIDTH-1:0] tot;
logic [63:0] t_leading_edge;


// ADC interface
adc_bus_if adc_bus_a();
adc_bus_if adc_bus_b();
adc_bus_if adc_bus_c();
adc_bus_if adc_bus_d();

// ----- ADC model -----
adc_full_driver bfm;


// Timestamp clk
always begin
  clk_timestamp = 1'b0;
  forever begin
    #(TS_HALF_PERIOD);
    clk_timestamp = ~clk_timestamp;
  end
end



tot_top #(
  .PORTS_WIDTH(VECTOR_WIDTH)
)
u_tot_top (
  .clk_timestamp (clk_timestamp),
  .rst_n         (rst_n),
  .thr           (thr),

  // ADC data
  .bus_a         (adc_bus_a.in),
  .bus_b         (adc_bus_b.in),
  .bus_c         (adc_bus_c.in),
  .bus_d         (adc_bus_d.in),

  // Outputs
  .t_leading_edge_out (t_leading_edge),
  .tot_out            (tot),
  .data_valid         ()
);

// Init and start ADC
initial begin
  bfm = new(adc_bus_a, adc_bus_b, adc_bus_c, adc_bus_d, ADC_FRAME_LEN);
  bfm.run(ADC_HALF_PERIOD);
end


// Put test values to ADC
initial begin
    for (int i = 0; i < 1024; i += 4) begin
      bfm.bus[0].push(i);       // Sample 0, 3, 7, ...
      bfm.bus[1].push((i+1));   // Sample 1, 4, 8, ...
      bfm.bus[2].push((i+2));   // Sample 2, 5, 9, ...
      bfm.bus[3].push((i+3));   // Sample 3, 6, 10, ...
    end
end


initial begin
  rst_n = 1'b0;
  #1us;
  rst_n = 1'b1;
  #100ns;
end


endmodule