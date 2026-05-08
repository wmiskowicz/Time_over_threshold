`timescale 1ps/1ps

module adc12dl3200_bus_bfm #(
  parameter real    CLK_FREQ_MHZ  = 800.0,
  parameter integer FRAME_LEN     = 8
)(
  output logic        clk_p,
  output logic        clk_n,
  output logic [11:0] dat_p,
  output logic [11:0] dat_n,
  output logic        str_p,
  output logic        str_n
);

// Period Calculations
localparam real BUS_CLK_PERIOD = 1000000.0 / CLK_FREQ_MHZ; // 1250ps for 800MHz
localparam real BIT_CLK_PERIOD = BUS_CLK_PERIOD / 2.0;    // 625ps for 1.6Gbps

// Shift data by 90 degrees (Quarter period) to be center-aligned
// This ensures the clock edge hits the middle of the data eye
localparam real PHASE_SHIFT = BIT_CLK_PERIOD / 2.0;

logic [11:0] sample_queue[$];
logic        bit_clk = 0;
logic        bus_clk = 0;
int          sample_count = 0;

// 1. Generate the Bit Clock (1.6 GHz)
initial forever #(BIT_CLK_PERIOD/2.0) bit_clk = ~bit_clk;

// 2. Generate the Bus Clock (800 MHz)
// We delay this relative to the data to simulate a center-aligned interface
initial begin
  bus_clk = 0;
  #(PHASE_SHIFT);
  forever #(BUS_CLK_PERIOD/2.0) bus_clk = ~bus_clk;
end

assign clk_p = bus_clk;
assign clk_n = ~bus_clk;

// 3. Task to feed data from Testbench
task push_sample(input [11:0] val); sample_queue.push_back(val);
endtask

// 4. Data Driver (Driven by the faster Bit Clock)
always @(posedge bit_clk) begin
  logic [11:0] current_val;

  if (sample_queue.size() > 0) begin
    current_val = sample_queue.pop_front();
  end else begin
    // Incrementing pattern is better than $random for debugging SerDes
    current_val = 12'hA00 + sample_count;
  end

  // Drive Differential Pairs
  dat_p <= current_val;
  dat_n <= ~current_val;

  // Strobe Logic
  if (sample_count == (FRAME_LEN - 1)) begin
    str_p <= 1'b1;
    str_n <= 1'b0;
    sample_count <= 0;
  end else begin
    str_p <= 1'b0;
    str_n <= 1'b1;
    sample_count <= sample_count + 1;
  end
end

endmodule