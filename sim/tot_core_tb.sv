`timescale 1ns / 1ps

module tot_core_tb();

parameter WIDTH = 16;
parameter CLK_PERIOD = 10; // 100MHz

// Signals
logic clk;
logic rst_n;
logic start;
logic busy;
logic [WIDTH-1:0] thr;
logic [WIDTH-1:0] sample;

wire [WIDTH-1:0] tot;
wire [WIDTH-1:0] t_leading_edge;
wire [WIDTH-1:0] t_trailing_edge;
wire data_valid;

// Instantiate UUT (Unit Under Test)
tot_core #(WIDTH) dut (.*);

// Clock Generation
initial begin
  clk = 0;
  forever #(CLK_PERIOD/2) clk = ~clk;
end


// Main Stimulus
initial begin
  // Initialize
  rst_n = 0;
  start = 0;
  thr = 500;   // Set a threshold
  sample = 0;

  wait_clk_cycles(5);
  rst_n = 1;
  wait_clk_cycles(5);

  // Start processing

  // Pulse 1: Strong pulse (well above threshold)
  start <= 1;
  wait_clk_cycles(100);
  start <= 0;
  $display("Emitting edge 2000:  %tns", $time());
  drive_pulse(2000, 40);

  // Pulse 2: Weak pulse (barely above threshold)
  start <= 1;
  wait_clk_cycles(10);
  start <= 0;
  $display("Emitting edge 600:  %tns", $time());
  drive_pulse(600, 15);

  // Pulse 3: Under threshold (should not trigger)
  start <= 1;
  $display("Emitting edge 1000:  %tns", $time());
  wait_clk_cycles(1000);
  start <= 0;
  drive_pulse(400, 10);

  #100;
  $display("Simulation Finished");
  $finish;
end

// Monitor outputs
always @(posedge data_valid) begin
  $display("--- Event Detected at %tns---", $time());
  $display("Leading Edge:  %0d", t_leading_edge);
  $display("Trailing Edge: %0d", t_trailing_edge);
  $display("ToT:           %0d cycles", tot);
end


// Task to generate a pulse based on the image (Fast rise, slow decay)
task automatic drive_pulse(input int peak_amplitude, input int duration_cycles);
  int val;
  $display("Driving pulse with peak %0d", peak_amplitude);

  // 1. Sharp Rise (1-2 clock cycles)
  sample <= peak_amplitude / 2;
  @(posedge clk);
  sample <= peak_amplitude;
  @(posedge clk);

  // 2. Exponential Decay (Simulating the tail in the image)
  // Using a simple multiplier to mimic RC decay
  val = peak_amplitude;
  repeat(duration_cycles) begin
    val = (val * 90) / 100; // 10% decay per cycle
    sample <= val;
    @(posedge clk);
  end

  sample <= 0;
  repeat(10) @(posedge clk);
endtask


task automatic wait_clk_cycles(input int clk_num);
  repeat(clk_num) @(posedge clk);
endtask
endmodule
