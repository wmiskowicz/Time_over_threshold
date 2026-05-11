`timescale 1ns / 1ps

module tot_core_tb;

// ============================================================
// Parameters
// ============================================================

parameter SAMPLE_NUM_PER_CYCLE = 1;
parameter WIDTH                = 32;
parameter FRAC                 = 8;

parameter CLK_PERIOD = 10; // 100 MHz

// ============================================================
// DUT Signals
// ============================================================

logic clk;
logic rst_n;

logic [WIDTH-1:0] thr;

logic [SAMPLE_NUM_PER_CYCLE*12-1:0] sample;

// Outputs

wire [WIDTH-1:0] tot;

wire [WIDTH-1:0] t_leading_edge;

wire [WIDTH-1:0] t_falling_edge;

wire [WIDTH-1:0] tot_fall;

wire data_valid;

// ============================================================
// DUT
// ============================================================

tot_core #(
  .SAMPLE_NUM_PER_CYCLE(SAMPLE_NUM_PER_CYCLE),
  .WIDTH(WIDTH),
  .FRAC(FRAC)
)
dut
(
  .clk(clk),
  .rst_n(rst_n),

  .thr(thr),

  .sample(sample),

  .tot(tot),

  .t_leading_edge(t_leading_edge),

  .t_falling_edge(t_falling_edge),

  .tot_fall(tot_fall),

  .data_valid(data_valid)
);

// ============================================================
// Clock generation
// ============================================================

initial
begin
  clk = 0;

  forever #(CLK_PERIOD/2)
    clk = ~clk;
end

// ============================================================
// Wave dump
// ============================================================

initial
begin

  //------------------------------------------------------------
  // GTKWave
  //------------------------------------------------------------

  $dumpfile("tot_core_tb.vcd");

  $dumpvars(0, tot_core_tb);

end

// ============================================================
// Monitor all signals
// ============================================================

initial
begin

  $display("========================================================");
  $display("Time      clk rst sample thr  valid lead fall tot");
  $display("========================================================");

  forever
  begin

    @(posedge clk);

    $display(
      "%0t   %0b   %0b   %0d   %0d   %0b   %0d   %0d   %0d",
      $time,
      clk,
      rst_n,
      sample,
      thr,
      data_valid,
      t_leading_edge,
      t_falling_edge,
      tot
    );

  end

end

// ============================================================
// Event detector print
// ============================================================

always @(posedge data_valid)
begin

  $display("");
  $display("================================================");
  $display("EVENT DETECTED @ %0t ns", $time);
  $display("================================================");

  $display("Threshold         : %0d", thr);

  $display("Leading Edge      : %0d", t_leading_edge);

  $display("Falling Edge      : %0d", t_falling_edge);

  $display("ToT               : %0d", tot);

  $display("ToT Fall          : %0d", tot_fall);

  $display("================================================");
  $display("");

end

// ============================================================
// Main stimulus
// ============================================================

initial
begin

  //------------------------------------------------------------
  // Init
  //------------------------------------------------------------

  rst_n  = 0;

  thr    = 32'd500;

  sample = '0;

  //------------------------------------------------------------
  // Reset
  //------------------------------------------------------------

  wait_clk_cycles(10);

  rst_n = 1;

  wait_clk_cycles(10);

  //------------------------------------------------------------
  // Pulse 1
  //------------------------------------------------------------

  $display("");
  $display("Generating STRONG pulse");
  $display("");

  drive_pulse(
    2000,
    40
  );

  wait_clk_cycles(50);

  //------------------------------------------------------------
  // Pulse 2
  //------------------------------------------------------------

  $display("");
  $display("Generating MEDIUM pulse");
  $display("");

  drive_pulse(
    1200,
    25
  );

  wait_clk_cycles(50);

  //------------------------------------------------------------
  // Pulse 3
  //------------------------------------------------------------

  $display("");
  $display("Generating WEAK pulse");
  $display("");

  drive_pulse(
    700,
    15
  );

  wait_clk_cycles(50);

  //------------------------------------------------------------
  // Pulse below threshold
  //------------------------------------------------------------

  $display("");
  $display("Generating BELOW-THRESHOLD pulse");
  $display("");

  drive_pulse(
    300,
    20
  );

  //------------------------------------------------------------
  // Finish
  //------------------------------------------------------------

  wait_clk_cycles(100);

  $display("");
  $display("Simulation Finished");
  $display("");

  $finish;

end

// ============================================================
// PMT-like pulse generator
//
// Fast rise
// Exponential decay
// ============================================================

task automatic drive_pulse
(
  input int peak_amplitude,
  input int duration_cycles
);

  int val;

  begin

    //----------------------------------------------------------
    // Fast rise
    //----------------------------------------------------------

    sample <= peak_amplitude / 4;
    @(posedge clk);

    sample <= peak_amplitude / 2;
    @(posedge clk);

    sample <= peak_amplitude;
    @(posedge clk);

    //----------------------------------------------------------
    // Exponential decay
    //----------------------------------------------------------

    val = peak_amplitude;

    repeat(duration_cycles)
    begin

      //--------------------------------------------------------
      // Approximate RC exponential decay
      //--------------------------------------------------------

      val = (val * 92) / 100;

      sample <= val[11:0];

      @(posedge clk);

    end

    //----------------------------------------------------------
    // Return to baseline
    //----------------------------------------------------------

    sample <= 0;

    repeat(10)
      @(posedge clk);

  end

endtask

// ============================================================
// Wait N clocks
// ============================================================

task automatic wait_clk_cycles
(
  input int clk_num
);

  begin

    repeat(clk_num)
      @(posedge clk);

  end

endtask

endmodule