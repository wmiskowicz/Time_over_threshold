`timescale 1ps / 1ps

module output_sum_tb();

parameter PORTS_WIDTH = 32;

// Clock periods
localparam CLK_40M_PERIOD = 25000;   // 40 MHz
localparam CLK_266M_PERIOD = 3750;   // 266.66 MHz (approx)

// Signals
logic clk_timestamp = 0;
logic clk_data = 0;
logic rst_n = 0;

logic data_valid_in = 0;
logic [PORTS_WIDTH-1:0] tot_in = 0;
logic [PORTS_WIDTH-1:0] t_leading_edge_in = 0;

logic data_valid_out;
logic [PORTS_WIDTH-1:0] tot_out;
logic [63:0] t_leading_edge_out;

// Device Under Test (DUT)
output_sum #(
  .PORTS_WIDTH(PORTS_WIDTH)
) dut (
  .clk_timestamp(clk_timestamp),
  .clk_data(clk_data),
  .rst_n(rst_n),
  .data_valid_in(data_valid_in),
  .tot_in(tot_in),
  .t_leading_edge_in(t_leading_edge_in),
  .data_valid_out(data_valid_out),
  .tot_out(tot_out),
  .t_leading_edge_out(t_leading_edge_out)
);

// Clock Generation
always #(CLK_40M_PERIOD/2)  clk_timestamp = ~clk_timestamp;
always #(CLK_266M_PERIOD/2) clk_data = ~clk_data;

// Stimulus
initial begin
  $display("Starting Testbench...");
  rst_n = 0;
  #(CLK_40M_PERIOD * 5);
  rst_n = 1;
  #(CLK_266M_PERIOD * 10);

  // Test Case 1: Single Data Pulse
  send_data(32'hAAAA_BBBB, 32'd500);

  // Test Case 2: Back-to-back Data
  send_data(32'h1111_2222, 32'd1000);
  send_data(32'h3333_4444, 32'd1500);

  #(CLK_40M_PERIOD * 2);

  // Test Case 3: Verify timestamp increment
  send_data(32'hEEEE_FFFF, 32'd0);

  #(CLK_40M_PERIOD * 10);
  $display("Simulation Finished");
  $finish;
end

// Task to drive data aligned to clk_data
task send_data(input [31:0] tot, input [31:0] lead_im);
  @(posedge clk_data);
  data_valid_in <= 1'b1;
  tot_in <= tot;
  t_leading_edge_in <= lead_im;
  @(posedge clk_data);
  data_valid_in <= 1'b0;
endtask

// Simple Monitor
always @(posedge clk_data) begin
  if (data_valid_out) begin
    $display("[%0t ps] OUT: TOT=0x%h, TS_LEAD_OUT=%0d",
      $time, tot_out, t_leading_edge_out);
  end
end

endmodule