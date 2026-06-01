`timescale 1ns / 1ps
// `include "bram_controller_ip_v1_0_tb_include.svh"

import axi_vip_pkg::*;
import bram_controller_ip_v1_0_bfm_1_master_0_0_pkg::*;

module bram_controller_ip_v1_0_tb();

xil_axi_uint                            error_cnt = 0;
xil_axi_uint                            comparison_cnt = 0;
axi_transaction                         wr_transaction;
axi_transaction                         rd_transaction;

// Reset verbosity to help debug AXI channel transactions in the console terminal
xil_axi_uint                           mst_agent_verbosity = 400; 
bit                                     clock;
bit                                     reset;
integer result_slave;

localparam LC_AXI_BURST_LENGTH = 1;
localparam LC_AXI_DATA_WIDTH = 32;

// Offset Mappings from your Vivado Configuration Layout
localparam bit [31:0] ADDR_START_REG = 32'h0000_0000; // Offset where your FSM pulls start address
localparam bit [31:0] ADDR_STOP_REG  = 32'h0000_0004; // Offset where your FSM pulls stop address
localparam bit [31:0] CONTROL_REG    = 32'h0000_0008; // Offset containing the 'start' bit

task automatic COMPARE_DATA;
  input [31:0] expected;
  input [31:0] actual;
  begin
    if (actual != expected) begin
      $display("[TB ERROR] Match Failed! Expected = 0x%h, Actual = 0x%h", expected, actual);
      result_slave = 0;
    end else begin
      $display("[TB SUCCESS] Register Verification Matched: 0x%h", actual);
    end
  end
endtask

xil_axi_ulong                           mtestADDR;
xil_axi_prot_t                          mtestProtectionType = 3'b000;
xil_axi_resp_t                          mtestBresp;
xil_axi_resp_t                          mtestRresp;
bit [63:0]                              mtestWDataL;
bit [63:0]                              mtestRDataL;

bram_controller_ip_v1_0_bfm_1_master_0_0_mst_t          mst_agent_0;

// Device Under Test (DUT) Hookup Instantiation
`BD_WRAPPER DUT(
  .ARESETN(reset),
  .ACLK(clock)
);

// Instantiate VIP Agent Driver
initial begin
  mst_agent_0 = new("master vip agent", DUT.`BD_INST_NAME.master_0.inst.IF);
  mst_agent_0.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
  mst_agent_0.set_agent_tag("Master VIP Main");
  mst_agent_0.set_verbosity(mst_agent_verbosity);
  mst_agent_0.start_master();
  $timeformat (-9, 2, " ns", 1);
end

// Generate Balanced Synchronous Clock System (100MHz / 10ns Cycle Period)
always #5ns clock <= ~clock;

// System Cold-Reset Sequence Generator
initial begin
  reset <= 1'b0;
  clock <= 1'b0;
  #100ns;
  @(negedge clock);
  reset <= 1'b1; // Release Reset State on clock fallback boundary
  $display("[TB SYSTEM] Reset released safely. Starting Hardware Control sequence...");
end

// Main Simulation Vector Loop Execution Block
initial begin
  // Wait until system reset clears cleanly
  wait(reset == 1'b1);
  repeat (10) @(posedge clock);

  // Trigger AXI Register Operations
  S_AXI_TEST();

  // Allow extra run-out simulation padding so downstream pipelines update visually
  $display("[TB SYSTEM] Pipeline active. Watching output channel data burst waveforms...");
  repeat (150) @(posedge clock);

  $display("[TB SYSTEM] Processing sequence completed successfully.");
  $finish;
end

// Custom Configuration Driving Sequencer Task
task automatic S_AXI_TEST;
  begin
    result_slave = 1;

    // --- STEP 1: Set BRAM Start Boundary Address to 0xA001_2000 ---
    $display("\n[AXI WRITE] Configuring Start Address Register...");
    mtestWDataL = 64'hA001_2000;
    mst_agent_0.AXI4LITE_WRITE_BURST(ADDR_START_REG, mtestProtectionType, mtestWDataL, mtestBresp);
    repeat (2) @(posedge clock);

    // --- STEP 2: Set BRAM Stop Boundary Address (Read out 128 bytes ahead) ---
    $display("[AXI WRITE] Configuring Stop Address Register...");
    mtestWDataL = 64'hA001_2080;
    mst_agent_0.AXI4LITE_WRITE_BURST(ADDR_STOP_REG, mtestProtectionType, mtestWDataL, mtestBresp);
    repeat (2) @(posedge clock);

    // --- STEP 3: Read back register parameters to verify bus health ---
    $display("\n[AXI READ] Verifying Start Address Register stability...");
    mst_agent_0.AXI4LITE_READ_BURST(ADDR_START_REG, mtestProtectionType, mtestRDataL, mtestRresp);
    COMPARE_DATA(32'hA001_2000, mtestRDataL[31:0]);

    // --- STEP 4: Fire the 'start' Pulse Bit to awaken the controller FSM ---
    $display("\n[AXI WRITE] Asserting Control Register Start Bit (0x1)...");
    mtestWDataL = 64'h0000_0001; 
    mst_agent_0.AXI4LITE_WRITE_BURST(CONTROL_REG, mtestProtectionType, mtestWDataL, mtestBresp);
    
    // Hold it high for a cycle, then drop it to simulate an interactive button press
    @(posedge clock);
    mtestWDataL = 64'h0000_0000;
    mst_agent_0.AXI4LITE_WRITE_BURST(CONTROL_REG, mtestProtectionType, mtestWDataL, mtestBresp);

    $display("[TB STATUS] Control vectors dispatched. Transitioning monitoring framework to hardware internals.");
  end
endtask

endmodule