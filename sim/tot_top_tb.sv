`timescale 1ns / 1ps

module tot_top_tb();

parameter WIDTH = 32;
parameter CLK_PERIOD = 10;

// Standard Signals
logic clk;
logic rst_n;
logic start;
logic [WIDTH-1:0] thr;

// Instantiate the AXI Interface
// Note: Ensure the interface definition matches your 'axi_if'
axi_if #(WIDTH) axis_bus();

// Outputs from DUT
wire [WIDTH-1:0] tot;
wire [WIDTH-1:0] t_leading_edge;
wire [WIDTH-1:0] t_trailing_edge;
wire data_valid;

// Instantiate UUT
tot_top #(WIDTH) dut (
  .clk(clk),
  .rst_n(rst_n),
  .start(start),
  .thr(thr),
  .axis(axis_bus.slave), // Connecting to the slave modport
  .tot(tot),
  .t_leading_edge(t_leading_edge),
  .t_trailing_edge(t_trailing_edge),
  .data_valid(data_valid)
);

// Clock Gen
initial begin
  clk = 0;
  forever #(CLK_PERIOD/2) clk = ~clk;
end

// Main Stimulus
initial begin
  // Reset state
  rst_n = 0;
  thr = 500;
  axis_bus.tvalid <= 0;
  axis_bus.tdata  <= 0;

  wait_clk_cycles(10);
  rst_n = 1;
  wait_clk_cycles(5);

  // Pulse 1: Strong pulse
  start <= 1;
  wait_clk_cycles(100);
  start <= 0;
  $display("Emitting edge 2000:  %tns", $time());

  drive_pulse_axis(2000, 40);
  wait_clk_cycles(20);

  // Pulse 2: Weak pulse
  start <= 1;
  wait_clk_cycles(100);
  start <= 0;
  $display("Emitting edge 600:  %tns", $time());
  drive_pulse_axis(600, 15);
  wait_clk_cycles(2000);

  $display("Simulation Finished");
  $finish;
end

// AXI Stream Drive Task
task automatic drive_pulse_axis(input int peak_amplitude, input int duration_cycles);
  int val;

  // 1. Sharp Rise
  send_sample(peak_amplitude / 2);
  send_sample(peak_amplitude);

  // 2. Exponential Decay
  val = peak_amplitude;
  repeat(duration_cycles) begin
    val = (val * 90) / 100;
    send_sample(val);
  end

  // Back to zero/idle
  send_sample(0);
  axis_bus.tvalid <= 0; // Drop valid after pulse
endtask

// Helper task to handle AXI Handshake (32-bit data over 8-bit bus)
task automatic send_sample(input [31:0] data_val);
  logic [7:0] bytes [4];

  // Split the 32-bit word into 8-bit chunks (Little Endian style)
  bytes[0] = data_val[7:0];
  bytes[1] = data_val[15:8];
  bytes[2] = data_val[23:16];
  bytes[3] = data_val[31:24];

  for (int i = 0; i < 4; i++) begin
    axis_bus.tdata  <= bytes[i];
    axis_bus.tvalid <= 1;

    // Wait for the specific clock edge where this byte is consumed
    do begin
      @(posedge clk);
    end while (!axis_bus.tready);

    // After the edge where READY was 1, the byte is gone.
    axis_bus.tvalid <= 0;
    axis_bus.tlast <= i==3;
  end
endtask


task automatic wait_clk_cycles(input int clk_num);
  repeat(clk_num) @(posedge clk);
endtask

// Monitor
always @(posedge data_valid) begin
  $display("--- Event Detected at %tns---", $time());
  $display("Leading Edge:  %0d", t_leading_edge);
  $display("Trailing Edge: %0d", t_trailing_edge);
  $display("ToT:           %0d cycles", tot);
end

endmodule