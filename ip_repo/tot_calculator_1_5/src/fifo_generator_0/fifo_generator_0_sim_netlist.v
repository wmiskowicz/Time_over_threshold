// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jun  2 01:03:46 2026
// Host        : DARIUSZ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/AGH_archive/Semestr_MI/SDUP/Project/tot_calculator_merge/ip_repo/tot_calculator_1_5/src/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module fifo_generator_0
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rd_rst_busy;
  wire srst;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [8:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [8:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "511" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "510" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "9" *) 
  (* C_RD_DEPTH = "512" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "9" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "512" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_0_fifo_generator_v13_2_8 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[8:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[8:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qpp66Ic61NR0mkVmjG7vgOL0NB6CTFb3Lsi4qxXFnJ8tqqKShAriiJmn7uXBNCBvGZLnXCb4uZ8i
EqR6IQq34abN0LrooQu7rm3+Pw0iYYKzN1lcF+6EclZnFEeAIj7bGbLI9X3Ib88Mjvj0+p4IA3Fj
9ZGHNW+O+knchfmqAlY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aPxGoOnJHTAqFdFSzG9ru8Bw31YY71SqnXPbyZfA86PxaAjm6NpQtu/8fWeHlM19Jz2a+1ZDAj2o
VkuAl+PF18BGfMNo3Sar4bSJm8QwGYpdMiLM+06C76IY/redmJfNEXBnwDGx1NRihbIrHe17Fsp0
wci4ZT2n5HHVBuhowg8un8abF3TR6B1Ll1huon8bmUC1ZCG/4nJpwwhcE9pfhZYPxzBDs7qGqe8g
84QrDMzU6WhHqgMvR8Uor517l0pItAYj4pxMvaZhC0k3EgSYp/MQytJr+HF3vsw+o0eF1bHVU6Na
eXWSV3ijxUZXCyCMZ7YmEZa9JX5uKS5m5eiP0w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mWzZIcmTvZaO1EYxJJAY0jRMaMCjTyRzPU6SbUzrKHfep0pA4LS/MlSJytRY9FYloq8LonlEJmOa
YvTXus6Gximwd82NfOWOU+xAliGI4hqn0DLAX0dSg8OERUorJfPsNqrBuHvDufz9efGQs7Upr74j
TMlZiW0gSVGHMQSLqUU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lzrP+qu7wbNhDwJym0tPh2ytzSxetAAI7sMgVeTkF4E0aGc202oEP6AjkTk508CVci4/F5/oGOgY
jKPpZya27mqQoisM8ilYqvcw5pXx0/pQGRu7JZF08b+k4spPXeJ2wn8IDY3FWSHnOcvi4dOebH/q
+4u19fu74aqk1ECrIQzbVZpwcWeMDGDUSHDy4FPk9OjOswCxOQPuglJjXYv+hMg/7JiOUBTJX0uZ
Xmdtxy8L9z4EWzfRzOSHsJFjTkSLmdTFavs61PfZS4KYT25LV10DOvmL3fy7M6+bBXN5qE6rW0RO
W75E2gYB5D04Qa/SgER8JeFW1M0T8RacJUUV3w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FMe5G7+i5Dg2OTIM7CinNcesmx+3xFOKOCTYsoHWrp5MlbAPNqriPe41pqSx7Zo2+ype18VVw+tF
lEjRQQF5TsKrIoc8kQqO2Ck9JGAZjsyrFM5jTWzQZBawoJBB/EbM32rM+O963qqQdP9ruUzt4aM6
vf/tdyfOgxkUcl6+JJNYOQDIdBGzvk/dQUeNjJV2gWOsMrT/8aQJJMjp2XPW18IEhMSdUT+e8kM3
NlZcNyywDkNOLcIS8VKNtRSuC1gLTR2zXKL9eJomOGg66N8dfL808FNqNi+dtOqd2OhDKPCh9VYN
gJ7hSggqdHhUVsYY5qT37vUMUZG37ITEHavSug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IZp7wGosl6Ef78SQeUxKofUHVTZqkQHJJU3t0K53ysy/heNabWQpu3n2M8+eCIHOAio8FR6+AOlT
IAA4JAFJfJ70Sm8r1CV0vuXGNVDhIlFr8HhnDDJc8CLdz8yaFrENXgAR92A47cxMlNwaJCGipXa/
922mJ6b2pGDdjdTLUcKsU1DD92Kou08spouWrbB/PrcgiC0dc9Vh5gbveNqmUuOyH3mlBam3FvZl
pgofpiJBXCkR1i8+hAEtpYGjmSGUTUQ6uHMUKX0u24I2h77iOiDKYTNJT6jVuiYM/DRD2IfylgS4
u7QDnvP07bndi2AIocxrw7LHdjJ9XWVyHUaXIQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mcmaj6yfbZVEKTiuHl5s5QU2BU2VRdOtz/pVopoNI21Pt4eUkknoHSgdfu7K976MpUo+bkHQ7sJi
/0kAsbTsCHtz7UWvsCk9A5SyLMykdZnWyjEbf0dHlFcgzZooebDG2zm4mibiRUIKwAMgFxTWk4RV
k5Ay3X64cOudFYqRbTCUmp1L8ijVoYJo0zi23fsL0jwpEG5FTTnJ1h5mK9rFtj4nIzmKqwwP+7JP
esKOwY5A74OZa9Q2+Oc/k4UmgeZgw5q/xkt1aAjxDyRRfCIJizymNuJw9sa/nQXTKX0zCMrY0MnQ
PN3c4p5wkiNcAHR4g0673PQsVxTSpFZkCNMkwQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
mo2NT2/CRe5fYBwkxXV4DV2r4VY+mW8FieM9wY58cqg6XakgyeQ/Du2w01ie+Sko3Okr8ziahuNO
XBMXX0d4rR94Cwxf6q8vsbxZgbIlknsXsEuTwNfsw6ywD3/7leL6Kapx3fGSVuIHDMHjwpstoX+8
phs6lpM0VeRML4QJl7ITOuweBx9b+hHFRy5duNtva30fSyVWHLpzAsS+sS+gCcFxsDn+K9lQj/Kh
u11IaBweyu8d5W2ClTN46tdIzlVw6S962vDsk1+h6BQzF9y3z3BJfLpfR+9jdhy5wqng0ejlOpbT
G22gnlE/BqKGgLqVQKaeXfnp5NnReQcYXQTMossrLWwi2JUvDGuA6egmN+38JdoIzDHxNPxvAOZ/
mF9Qjn64t2tHB5iHybi3qFxlysWYSczGHStpTKrEoNAcQV/kMTe5coIDdy3mGIpwuduxq1OYPA9m
VKKE/GCL1MQzfgEx1Az+ts8Oo9hgM/A/cJ2envlpTKlt5itG9ciBZ41m

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RXuoomA7HXqxfp6NbzOyYrUYOntlNDrjnrws4DzEIh4YC3p8BdX9/zrLD3AxALpTnAeHyk3lFxEI
uDCpL9/tP6yT5BmfL2N/oyWIQ7y53Env+IFaJMMaBIG9U1LBtkcnhV/FW9tkUePJ8EbKyE9tP/kp
RScK28UNuQEHp0OPznrb1v+AWO/DiSNPuA44x+Ig5nBALVW9qfA4+tvzfHYpcke67vIFYWLthZx9
NC9+R793F9ypEZMOjinKDbEk0gDUoqsmcmgF819P1JtLnGnuwtr1uER6OP17CsHbFowAmPsPPA55
QkDMyp68B+cHNNW23VXNPbIXLvPilhp/ypT+iw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6BvoQpuoVy9vIT9h44IRmW7Bo+8MCKJj5ZfOShjmujfjeFOwPLw2GCUNvV3ipB1eThHomI5yXGiO
fxOovfDeVP2hfGVaO1qz9Lz6NGhPt8K9Z+sH2rq47t68akOCSgmAoKJ/5BbwL/t0FtUVgTtq7Si+
HqZAUgbX8TCY6IRkFibfSSK6UarmhEpPrPOpvsevKx4OaMU1jfgaJvIMRd257kSQy5o7pyO0n7VX
LK6V93O0bi7Aa/TTt9W2MSK5pIDw9DmkTCLFjsS7gBYQYaFaba+LGfjQ782nQK2+KDz85b5qKPM1
h19t51h74j2WjWCadIgjRVfMYVvsErL0ehA3Xw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MMpJ8DorVcMATHbuGSlNSCGkzTOL3lRnFD2u4TUx1W94+tAqA8Ktjam9MqFHuJh/5PX5VUq6FgP7
1oYcR65DRc8C5iUj4h0vhHLi42ruJU++GUuIdS9gvoiQ246hdXMefRe5wcEOnqmxKzf7fyduaSpG
7SdN9PpubFzyeck9cLJj2CYMY1XoujEAxeBG5YKJtFkQkCeHZWr6R8PkNR2oyQGuZuMeJdgNh4Lg
5yYuOk0BGcB7bwSjic5zqk+8Veyp/ZGAVMgpH80juQjINIxDcLbvhqTIZX4gKUQjcJYcBhVuPgVt
Ms7dqARwL9nkpmZ/SuNzUmGdEIhVlblWNDRV3A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 50880)
`pragma protect data_block
7Am+bchRH2A8fNHa07b7zKXWYo4DvdKdn4e2vTg9ulp9uAUBHp8cS8qh4I/bHGwB4GT7XPktLJP4
NKMhcEI1t+ErZyE4kBF2EcKF+U2kJpeG3nKX3IVy+TU1HP+P7ljXwokh+27mQCm6w0dNTwgMODbS
Bjgv0CpkqWj02C9PzQ/y62USO77wJNz2v9RDrCcUXc3l72Qx5m6ABg83Fa9Kvemkl7gO9Riu+3h4
T+Fpxy0+LpiNJf12Hf6KtkZEBW/64KKmT2/IpE8aBkAJO8b3V3ilSiEIJG9hxyviV8W6Tf+4D8MF
qRza5HurwA72tLHRs55JvBDhVrWRe+xUefWiGiYQVlgG0y0x5SEG5B4QuKi+IVFC2nVzWyBbh1wM
hn7TpjzxYsnXkKvdBc/nCa/sP0/O4msajY1zXMI2C6VVRr1/J3SgIsB3eufCaygvQp7CnLbtl+uU
y34SWbxoKDt+okx6UPFodcSyCZNJrEWxsfcyEdb5axpal+rMVuXypLNrtIKt82Wz5ndHY7Ce0VG1
kwss7MN13+5rci/1n4Q6JSIxuKmGyaXU4HCgx7BQnYqKi4thLGV5w9tc696A7rz4sSsfOgVAur0m
j1xzDG8mb31IvQEFeafmoQ93f/ZIEGHj0Zpvjzsu07iWkUoR/GMyszf/t1prtObRR+5zZZmCvxuL
CRdW+esyBfO5W1iQ3NE/lGEwibfydvnQ0IPcxPdJOv0hrfNovH+NdAwl6NlDedoVJMitIeqzBhHH
XErbCKopRtHC9qHbsxm8cSYh0yi7KPXk8mV1yHE6w0uXlMn9QwoRz/RRTtpl6etsicUfxAlLM80j
bvIKNaZyxeqcHcpMZzh27rTprICcDW3sdDw7qokFOAPFnQ7A4/WDac/dqaaO/ipYFDOWMIrXu8Av
uJ3m1Kgv3/sYV/6uQ1iZ+tzaxiPttWvTjNRI56ahp5iJpKOWDSRPuiVw7GxEmW4k5/dZmeKri/2M
L1hfmGdvKZZcnOyID8FXQWyEy+Mgjefd+YGj1U/miKIF/P7ZryCj1vJ/0rkHms8GZawMAlayYnB3
qYwXKVqYujE3QM/byW1wp+BGLW4sOMNKELaDCdWR+Rl4dTRGo7V8/ieEyGcNSpYT3GqYNDSlrVYH
lopkC/+nm21sZkwLp+Gc0RG40Q2cE8RuNp2BUmpUVDoGhYf5motElbwh5P4KsRB8Lz0URwcSVeAp
taIvTRJp50MnQ46ReoCsdztYncjxhT3a182DSGz1Cbq9fYQEVo4xp/1GZTpsoqm6OWe64+p/dTx2
qo5jDg0mHfpsHYQuBeOLZpsv7uHgv8qZFXpmMAhOBbFxYwQMhYpJ9o/t3RPL2AxmAMdF+pRdk24c
/VZuyKDv1JTiIik9wYGWX4QllzE3U7TrMWXUJXiRAooelcDBI1jH7JKqfkKBiuNcNbz63ImGeyfa
FoIWqtmAisPV769uy59AnPhBVr9qLoym3puIDIzKRJYlF5uVMqtU1M4gWd6YgxrRtI+x2cXVvnjD
oMBF2SCKpQYOv3dTJzUeQJ37DEyZlINzk3e1I6FNumQqt/nIJIWiyFvmWr1jsypppm391gVpDTss
sSceTb5trdnzB7FekFeFJ7JXI7Vv0WKFBCWCaCzjpVgsgXsUFmvXF8CCOrnfYPPljWITgjSmslxE
7WoEHK6DHqPM7bw0NPyp1sGf/o5JQzwo7QL9NilWC6ToSmQCvq61BLkTcqqUSJ9W3P37MaY+I6h9
TcgFmghzDLALsvWg1IPQ3coGV2xDewQnACTVFZKv5+gy57WzaSp6Evnard1emwl7UD1O48UHePiD
t1/wtsSI4o10323LJzGxEOyFnPvaslyZotw0Bh7+BpqRDa+U056myOd/PcpzkFLM/uznzhN1hiI9
p+l8O8uDbg/KTndqj2uJ8lvpLR2v7NpkldfyKheagDRqTto39VwqYh2Ea88EUu814pfVE4BCCLlT
ctRccrt23pAcJbbz59kBJ8s7Mq0DaQuVKPfw0vUJ6AKMnmSEx+ynsoVfkS/IDZuIPNzGbCwoOb4a
c16nL1ghwwwIESTHZwzsYSRuS8N/SsA6yzjQUWX7DJvEwoi6AfXStN9QMR0UEWlAD1s1fxMf5Hbn
tl2rgTNngBy6ZAZOSPKcqxW/SLChtDupmqhdLqRvm4q8poD0V46nVVvsCkELVguwj0RLxzd0thuR
gUFKQBhFLR/zTslxb6ggdD54p/wi8vxdcT2i8s9zx+LF5CiY/hk6bfKcQIGUDGp30ic3HxLbUoxK
k3NT2I6QIJrh4UjO757yBvJe6SvyKa9/nMWdbsxtYt7I6d5Recbp2+GCZPYg2n7ft1Q7IsZJVb8x
PwLQDpk3dmc+9XC2sxs2yN9p+gAzgJDgs/boRXiEaT4Ghi4HxSmIFSGaUldx301U6mQ1FXmcn0OG
V3874fxAXlNQm5KLlgTp6sB9w0XKRJ66oR38wIHTKn4yRYBABq5YH+MCiwFuxVnMmnOTcKyKMuSF
gbGEq6d3JK3bNgAbK/RJRID4DQUlFPiI1jm/gAXQo2Js+2guxL/QaxupKJvL+C3/CWy+v5Pynh2+
tOUkIAeAiwbPVYYbxK3W7+0LvPBRu14BrTlRiZwxb2niH2OHqYNXI2Y9xE1nj6RSbDS+cf8ySeZZ
h498nHnt4CSVEeQoKGKnpLvZCxamcTcWefAHOF68aLre6xifIomlCRR8+5uK7f+WuPCpikrUk/+I
192J+0fMfCYZVDo+eFqtivIF3lTBqhUUfZajC2TuQ8g6KkbZUC07+4dncKMswwMMuzXBE1uOq0PY
2VMV6XXrO6uiMUAqamizY71pApJoUUwJFvJNfTC8KKOfqgnHFAJG4CMJHd9sUyRm22itJwUHYlve
38/rllWBLFKrhgrY6KdwLImi2Z5i1u9AwYWPAXyG4MaVS2h5taDOG0wt+7oQzrrsX2hHA1NLlD91
cDKDVwSxpplRwOwx/jJrG2erARSXZRSpSFdSSCR9dq6UI43rc4aQrgwZoJH7tOFIZBwCKyBZJtDP
uRbaj7Exho/2CAPkabMcblxcjSPGQscFwsJmm0WTuno7eGny32XhfrQUcDFsvSUmeNkq48Zu1VrN
cTTsAJhjO4/1nPfeXc+j9BMxYtvZ+X4Tdj2n19vPH3ddEqFNBMyJLKi2sOv5lsYObqCf+x57EVm3
edj0B+m2JpzFqdY5PO5aDFgeBsTyoNJl0oGyYozcuUGXqmrc8GckS/P7S9eihkAYrT1ivD2CvnxK
MfTHD2LDeMhf0bsYiNCQSnGSY9YQ2LXyhd15l8bRXLlpzhSzyvJ1Y5as705xnRvnmAwGvoO5OxxZ
snEyHZcglc/uvzae/xuMphIh1EMgUItaCkKOlsYmUXu3h3hwGYbIjz8PZ+xF34+TCOGOudxJg1FD
N1ocC9qqo3UhU/OrH9f1CpZrytJfCKiGKSgOhaMmGaMmkafEevKwF3nJ/myOk9txAxDnA7i06Efj
BuejlzuQrs0UdkCOtp+33JlqoUyxIJm3iayBgY8eFU09GwuxgstqceMZm3N4EhVSIntS/4uL7/+y
i1599MpqHb1v4p1FLr7XypY1qiY/MD+zkHA04jirdSN+8JlrJgUi6wn6Of2jzgqflrichYVna5GB
zwFuaECjKSsboxQVxVe9IE9uQExfnFRnAYO/JilsMREULMa7UxWoPY8Y2IeIkswXB7K5XvXv0zSL
0YEFtZmwBG6cY3Dt94sKvxmBTvNR3mb1CqSZta5zISnmeHxPsAbJebybwQrMAHvOaVbzR8m/ean6
Oh0eXTkwGTozaXXcsFkBalZ9MCWucOMWlv41rHGfey/A/tOZy7h0thctrCblc80K6zIg43DGJbZ9
2n68hfKHcjO48a/OFPL3dEC3ILA3+HzPBt54nsrX6GjKysONGWf4K4X/D9OxfISSQKxM63iI7ycY
fO20kO3KxuIOieYCGt5wLAx0KKCEZHEXTfX6lNayoLXElb3uZrceGGncbZz7zO1nMaqXi33VWXwB
g6EqzQfav9qw0P4bZKIXPrcokfnKiDwSjKRfHgWnf3nP89dknEpucK7i/MJl2AEioqZJZRU3QmfN
pUJwSW5fKNvOAlkV8vZ5iE07Hsprf9nJetrWZa99XK8O55+jDgbAh70APUjFl7r6RPccpStqD5JD
Gxpi2lr3rbs5i74vncLcCWMoiUZEtD0PQf7HT1t5c4KD0xHGw2eHSuyeY91fIwFLmjBXzlQw04+g
sbCrsKQEo+x4bQqrnjGcv8xBbO1dj9xP6XeF9AYDFYlDxsI+7AAKCIuwg5aHoij4QbqB2JDpqvn3
ldskJqxT+Ch7DdmsJmcLbJvVG9gaaIahqm3Bqr9Ecrkgl4+fwoa+d0Gu34bdEPLbQozq7D46QBVc
SVH+ZmCrx0EZZQYEbictf1GhAAdgJF1+Wq0F+0cybZPB6CQ+twzyZvU0f8Kx4L+7KJ9NTjHrvNT0
GjiteF9iVfJum7vx01PSVJ747wHBN6gBbUEue74pcmcjxvkHBeXvjKxIRhkAlUk35aseM8wzDGGd
vrcfYs8rUc8jA+trNRgyS0hOlYFyeyrkDnEbyXAWJwkzVz12DTL3GrpeXuTI8j3pISbfqq/XVRRe
C9EaSR7lVA34Ixy7ontw4cfuXLop8ce6nWYfrvmcNcwV735f0KSqhQNgAoFsge8iKxkC1mF3OZSw
5FzKuDzEcFOjujDMu1ZaQ8H6+3h2Eo2WiRodGStAMh7FP2ZFAT/7tpC6jirSvhVJnNmwQEjfZvU7
YnQXvcS6tQfNJeW+Tc9oxiVAeCO7OeVhnVrcb2ewPJ1Lg2pb0fzrGYNiPIrgUGETV6Ayop8Z8bPZ
2w+1k8uaKQUQsS3r6Vdi9Z34cyTnGN9W8kkg9GprJ8RXuGiwBVqP5C/fwYkj+5nobsVfTmV/p11Q
98Gp+xZWKKMV69HWvb+M51scCj3IM32XU4Bq+1jFMkWJG+yJmIZRLXOyHDOQEYYyYjvPezOtRsLk
rOnpJfunsrybq8egzCLsdmZ+2/L30G5PjOqcwf4uG2WgaObsrQ8KwjXz5Ri7UGWLUVg2ZJhjz/mv
GarLqnQFO2meTetuG5yEs/kSij+4tHNq5iC/9YVWUM2mQtAKvPlotCDBkfbbuwqN7TXiIclw8gEH
fW1aTRTE/OWHkSRnXJ9VpCnTPxV5TFuY/PkFOkpVrrkBF5uOAXV+lR/siYs4KMlea06bRBMGWfn+
RuOt4x+gnOodNE3KcoOX8eyEbPI2aORFwNgENBfoj3giqdqLbxbgsVxAUrFTk57a1tLRiGnljUwn
XAhML+tQMTFcCLJVBfDEr0Zt9n/oQdsI5aXNI2hRVkdFmp+2sH2yEfZPGN/4n3Dg0lT+kyl4iPAf
ALY/+Dncppjv/+viL6Wyc/H1tjZq3tL2ZP0751Pdovavjl5VcNsb+Ka6HFl586N10l7coE15NcKU
Eqq4UHrcIa+Gx6XMdCj9VJ0gR+Dg6WlNQE+yv/wpcIvjPzPXEnV/aA6FMad6IgO2W87vCmaKlvBc
mI75LjfYbZHrltNui1kUWZSf8K/xUoFSjcqawF/S+3s2vRShvHhT5eB/WYKmBDX1irKLuOgBeOmu
8DDT1Fg1Zcv/KmLghKCdblyifBzynvR0JS6LCfPWKeiRnezprfNMgKeWAtK/uFGiqQX0JxdMK19I
ixtdf8sbcVF6j8O7G4zfz7ClCtWS65atx86OIIluBPJvoz/Wh2CMjWyvNip2XblnIpy1d++0MG5z
m4/943bLZGjxf85E8DKNYgVjhSDFz6F9TojS6Rqd9T21IedsiW8UTfDMKDOD6JCgOdDOJSaaqppU
mO2R+v6Acym8HVxfDRHMf+kydueeS7KjS6oLTWcxjCcFtvM/Vg3v4rFUhhV8KEAz5kFJm0TQdEGy
0DBjZnowLFZ55fjxbOryjm/piync36ion07NzDTGS5cuxJobffKMfaZq1dyaXAywgW2ZWnsb2es8
f24IHvXAhEymBS7fsQLudGqmJ7+GWlHdgqL3OGQWl/ICJW2Av9GUATf5GxKVnMeQbe0FAQEM30/D
1z9zgruXOdiSb3IoAh3jlde5DpYWJczrnMf6D48z9vVq8Nj+FAIaFcCqNZAV4kWzDi9Xldr7qn4A
uxGPQyYM5mui8ZPQQgKKyhrcFqESvCYEna8YL6Wu9eNyjpm6pV/tBFfm5Jkv0Mv7hbhF8F+HYPhZ
QaQOZsVV1CKVZaZrOQYb7PECr8tUCscxRAH5mv8fscHvZrsRGKmTwlB9pymi0cQq9+AMqtkJrCaH
mR8JghN4zNwv2/baLl4+l/uZ4op71NF8vRDw9IJ5H4WuKS4aY4Qu2OxW+yoc21/BUUEmON9D5bmC
MjERXKz2b6PP5E1pEi/qYVuU/fVShhpoWb8YxwvaQTU4fwD6p/Do6MIrT5Q1R3HRyTOgGzn37GZ+
dsUnFVZ2ZouIujhkV5x7Du4+dpL5qdcZbigD+FyXej/CzLM0NGeYRYqvwXCJbN8KIAkXJ0S6zJ7Z
o8WCctvozGTa4pa4rer329hl2q3EdyjGBkcMF57t7axDnatYTyGWRQ1WgFtrZ+aifIv6ag5zzpZD
PXT5Jc+/k8sim72RMpM7eqzLMfs9EJ0zdw3HhSJS5AVZbF9OgfZoGk1PhJZ3QaJWE2ncyzjZNkAY
jnsRLH5m6P5dprwKL3raL/1ae7qnaHEqnVC6CoAJEbf16UXM05tXOmu6cYRt1hsJzP4hMSbheZfS
vjs46F3QlciDEI0tN8ZIRzvxkYfYiNL6+iVDMLLfakynbIhbSTF4eYaceQc1JN18bqtwUzoimIwK
8mkftNh0ckShqMB9my+y0cy/M5KWqxedAAm5+Xx/uLpHFlRAyGBSuB4+D87icroN6bbVgMyHqRb5
3/SupoYK9U3YZwzTBnefPVJXL0tpV5CweNBVFOK4vAl3mmPr9D0F7qFo6CGtkIb48/nRU4DsrqXx
V8HB/w6SHV8CQh6gKtwbrvF7b05WxfaWNFQ00UiW/mlrGD10nna0/c+bHIsu1+JDZ+J/7fvIUIGO
Ug5njhQVxL31MWD9J0QZNiBQl34UVp6mKKzVW+1Fhr3CGmTXR7YBVUccT5dFlT0LLcMpdkmgqVsS
G7082n5H9PJBBCX9y5c5XTIdcVRgx95FTGOypi7yC0wJxxe+iLZO6ctb3fqFuJlPvRDFc9bSrQ3T
wH/jn8A/Cv5Mul/BNmmBEJawr4nITyt+QJtzsmhKZSRPh9MW67bZfZTqu7rIq5FSvT/siA5+IyU2
Xx2BJcejxjJ7sEZ5qlmiUf9825NvLkOlKkXRiqU7YL3/vJ8sQPu46n+8wLtO37FpBr0EN4qgNw6K
W6xd9ItsX/djA2/ziW3Ajk8XRLmmwCZLNdd9xbq/nE287yiF8N+lwDyQGuYC5pjgS+JkUj7TkTzK
SEtpXZcoaHJgTI2qj9uNtYgl7MBwXyF7DDGv82U9MofKHefGThVxHJEeDYUPyD9OaBrxo09arH7Q
YqUhMnqL54Xl7wr5M+Mq9+jch9Lomc2m3/APV4j3wqeEOjBLaUZYY5bWzhob0U1QOk9/GLc4Ir1N
sCe24JtnM8BKUwJuFTcaoiB0Fthp7/HswbOzsKx6gGEx/kLWj2TknD/DygY/JYs5CtfmLXPCx9zG
dKDEvph2ERHrjN1eHtMWt4EtdDRMPBhoOEGbnsrwxHkyfyKKH+iJlcLqXsWoVkGQYuvr1c+kFALA
80vxE5vtOCi3ifgYrhG1HP76NG856S/ZAsoSOwCkNZtAWMB/nOLRvW6r2naJBdMytVTBz87ncNnW
Qi8TZ7HMzRYZ6/jAWyae60q/5QrCOhX9yy1lhpC1NiHY8c1JJPUORnTqYEOlMdjxVXVN4p1JupeK
7Lunan56p77ZuNpaz/ShCMRsrH5khrSlTsDJtpWZERtLHBlZ7OpDS+VGwgayf2OYjx3+cs8SNair
a3rML74MRBCTDZj2Xglzo5AwDnHqvWECCa063nbwKbwNYE6UT27iNF+FBstTIKBAsdu8w5VVlmUE
D/BiO70e6rctVZsK6L8Pi052BsDq4kfLkLhxoJY+CWda8OjZ4tWREvC/TQA1OI2QFBakbn9bJzfc
hzf0fvp+bFtejYhST3f9MiXRUafoRK8NflRoR98TWc3kNZ6SGGoPBXASI/Nsc5kq/+M7LCK+ro7q
QWG56jNWDzQEckCHi1Xtj0jHyNvmIZihowd8bJlSWh3Ih6y+aSMZnlQXzmWaCiKZqV3OhR9dmDKM
t0KG+g02dtVuuL8A4PDjk0AI0YNMB+nXHf40JS4o2qHChBZBafI1535FWOjs5rkEGYU4PBrovKsi
1kwLtQ1ROCmC2kUSjoR3uQhEVzQYdPvHY/kKqiQx2WJCXJbjGc90CidrrAYf/WXoWYl/lZxtO29J
KTaAAmS+r3xf2WZrwDzqBG7PMd9wJTNyOH5zK8cDloonC5HxthR/wdnlU0qci/It5eGBejjQdyCw
3oh/Z290ZPOHztyXjDjSsxSVGyGmWn7tSsbdYLpMbs6ekMK4AhotFW/+vRoLTtnOP3nAtTJvwfbJ
znW3JDAjx6+ur55bl+7P88KvyhERklX7FtjuUoAM7jOf2WTS5OoBrelp43KZtq95kOQlJYcFQ9uo
e3kO5ht1NhO4knquBADQCujf229eQ8UPYie7gS9by5R7GGp4zXqZSsXEyvRcV9n0Mk4ldxBMGAR6
5Kmkv/kR35Q2QnYV5OcOavS+f7sEXAugJJf0yXHVvDTBqN9yG2sHzzy0AbedaHW4KcPWCiRL8nn0
3XVsiA3GCnLFfYXnrS2rwuPSpqn6R1GnBvHZuXd/oeLNUgDQX++j4Zk9xzix0/Nbmat3k9oIcL5M
w3aP59l/ZY4ebj/YBZG6T9IJbFffR2MRvz0nqKXo0Nh+Z6BfCjzq0CDLYbJGbv2WGIV02RowXlV8
IrKKSJsFk340SWBFCmJN7VTE5WelH6BbAjp/QujV9Mug2/p4zrA/LnfBjI3olcHYzI4Jqb1nIAUV
0+ID0mJZ6RvuJHuAQ9mnLmqdC72Rc25OckwSMzIZwb1vWOxGE939GjLiYOoghhLlZwwZiA3j6TKg
yEEIuzDwExR0z+BnzSi3qQ9w396MxlNFi4SOs8rZ6otXGDs4a9GiWvQBGCvMYbgYvy3e1Uf/bxIG
zTyATv2Ip0le8mbFy2hdXZHJ+b0YkoEqsN8WHW9czkKsY4cnBbC0B3bv9FnfXGmTeeWeKrbt4Ria
PAeFaB2L+Gt4LysNMkQB2UbxvR/3ko//fjMSgsAkEgYeRUWz7ZCPiJasttSM4f+JX5Z1WsyIwTYw
S6yp/WRuQcarPLFxbrQHUD1kQUXy2nVdm95pgOGSx6Nx293TmlTCuoM2iFIILeXLqDXtsS6sRUxa
lp2ziXhiUIBtj5jYRfXIFz3kqXtw6tn3GfiXiI3wZTkOZRqBFRcdKl5DOK2ycryrPyoWpN8aiZd4
KlHjWYrtzrj06n9cDuAKutu+TkpK43UMr3DivhzcOlY8NHlTBor14rKRSWGnZnTQt/2BrEqtwNE+
egODQtyCVrP/GkvdS1h5qoqirYb4nYe7r1/vQrgS1ILma0pq25HqV2Iic82xch/jeHHlY4tGSQTl
cLKbp8BJMr9Njnscchmb2NdjzfU51H2wgAlVgZATe4stntB2RuE6DBsLgfN+rTZ4W3cnlwf5f27M
IQFCdGBjYCBGItOFDaa0mkbNPPT3U8Y8S6+Mp5CmbJ+etRvfOO9ifIVQzPi+HaPNUF+LGuKflxyJ
V9gUX49l/a3Df+64lmXa/GF/V5FBWmF//DUa0Kq/hc52fxO+6bGRwHHGz6lLIEsK0YBZqnKkIufR
sQfLyvOOLqvSCKObrhwkJ0tHFkb/NzPR4CcSouGdiz/MecrRcekMBF8T9mBdCvTMVxRr+cYvOGip
zMzOgPnDQ4G6Z9NDBJm27gxaU/ZAYPiI3BpCg2p0DAj8vy6Iwoubam4oqCRKZd8hRz5MtfyR+Kdt
8e4lXYowb/QcMNNT/j+sezlgZB/5ArPTuaqfW4e0G5X1lpsx/3IHHj/Efg+SnarnHfsv5q/Xmf+v
L1b/xwSx2w31nTq+AHIKa5zrOgp4LmPcOaGPAFFNGYecTSb0rOM8kk1ri24JqTQq0aeGFZrsiKHF
0R5KKFupiAR7fF5unqwDkVjPXPwD/RXsZOxVcUFu5KDicXEYxogoilG13vW3/lJ8RHTDodZaKdS7
eiQ45TkKf3Cq3mleBLCpEjc7PlsFcPtu4CKDHvTZo1yGAEPWFQ1oEakk2w6ZFKLb65J+Zxw14CC2
uQP22cqQTDbVJZWF09IO7755wJNnhRKNNzdd1x5HFFH/XXJrGJv7lVoziCl/byzLm2MKqYh6NCTO
G1XA1M+6TfxnlnijTsZ36yGkMemMAnDR8sLJQSuWq5rUDLz0o2KT3qZKKodtgR4ZRtLGQc2NXhhv
1tUfxp6N+jiIZUNMKEfajZpps1mZ80McFIzDHbAzE1TtcTHwGG957LMhGwUcNya65Xlv2FT6/ns5
mQCL0tZd46CNZA5Pd45r2Jru6F4Pp9ybUFwYwp1vy38Ai7cLO9q99gFvbvMzWn1dNqmq+7AEGa9L
1xuVnQuYsLANfPl9OGpRgjk0EAXpfGeipHkJMpTalHTIGD51L0d8TX6A2vfaTxkdPa4cA554rtIw
zaLioGNw4ZbTgyjn1GghDaNlKbfxi3pUe+RTI36dwbxo61IOj9RV15De2kYog28hu17xqeG7ATER
lTXXYWXOOwKCuAXSK8+lnipy/Lg/4fn6cOaa62SkDUa8CIuRURcAltzEcuQ8Ij6ufUC94lF8ob8z
R8H18mr6ywGuvWestb59SPG4Yk+i0b3Wo/wtTEIl0XckV30E/SDPGObUM0fokNkV2NmOzGvRNsfZ
c+fH5dhV8WfqUe3ohFXKcedK7SCfMLdiawGmkdpEi1ukLimbZyXRB4I6Rr/bpJ727qZ5xaBPw+1f
4jzz2iINSxM3akDlB9c5zbkcVHlBHGKo1NXBTWdcqoEtFgYNaNpI8AtMj3CcmU5Umrj3wPEl19C5
iGLwm5RPtNDHN4SLzwx47V5tZrzaFWDg/9jGgHGcHhQsfAVBU3eB2TQJeCKSIFpJEcmBreEwNOfs
DHSIN7Hp9eJh7wTY3o7b5kBIryDd8o9kDPdxmRoT+mb4OswRfic3iCMmYDsr7eVo7ikA48Edd0Js
gOG06pMchX0GFCmp3oVDx4w8elLVqRP+93TNn9bUyTh2jhjUEouCe6eWdcdOPrKdrF1zJtAyQGtL
8QJwwbbeb2I+ApiLIVEe/W/dGU9/ihh25R2Zhiz8t+s4gUPXAMacNin7i1iUMt8wbTIbcqyZwH2o
F+XaqGe3CAqxq9/MrM0uQ5tzldJjslzPhmWFcLm5fRIylXzwPiSPyDB2xDzUNph781YbXALlaNes
LaTd7Yt2rW2ubDTKRdZB7Vcb2McBtqLDSy24N0nWj5Iv/w5gmAiGF+BDh4mAbApfT30ZydXVoG5+
dxVvUYF+9ivBDmu7/MPERVTIAdrqbr6io/vzNnC6q0U/ZNM0gGu+dmXT28FGdHiJVQ8P5UGqgaXO
MHAsYxhlDvrxLgR+Rr6bXssDs9pYnAuooo6FA/GrdQ7ZYEbymRGyEdC85xeaBX2q8k36Lg5od3LB
3bbYMH9bCprT4QP0hkfLs5fNlMfCKmY8tWHlxHLjQ78XsDN5L/VQNZWJuaXGHib34pCdB+b8nHig
EJM6ds8QQvc5ADHeTf9+LmcxOIUrMgGZd5akZu9PpYB0m5fkxXlNPh6T8efAJbUGKtbzcvmQ4ECI
DipyxRRJvuauDwF0TNxe1YF//uWrH1Xs09m9aM4xpjeL/pifPOjjxZMp/lFNwKxOOzphO1d61Doz
D00Me7Au/GCbjE5pAOZyr6CkpB2CodX+kw/a9pT7GdpemUJCbk7VH4UzVKFiBU5G/FuUNJ7OmMnX
NxTfAXruIC68TqzIbmUWz2sn65xiHEj7A22w1l0X6zw3rPrVGr+WPYNoixQUkDmTMIyZHVxlksNc
UYCo8nNSSFHe9ctaC8mJ3Equae5MpzxBxn9KwYTcG5l+A4pn50zkO+VgpQtUU9eYAqy/KX6dnoYf
Y0HJO6h9VHZJucVBPGusPb+ZI+gzAYP2m9X7QNTHk/bRFHA5OLIWTowl8F+eAfH7iK6eJ8ln5gkR
wA3cYIN0nKoj35MUhJUYL4S+uxk8crjkj4jS506YfoMSoSXe8vRFpMR9W2kq63j4oLIcaoeWE1a8
VkLubE2iP5zHDIiPV91pindte/T/oIHQVU6kM0W4bXScNamAO4Uyv+Q+Kw2i8nzbGTTW7mymR+Ye
GNhk7tmdGUHGwWgwJ/xiNNnv0GYEit87QRfDrN1zFr3TZt2dLFJMyLGo+oegUmticGoMwuMIb/4b
LjftmerrivQW4Iul6M82HrA590zvy+EFVY2X7h761Tju6zgB7UCSi0WbN1t3w9gVa72eRPUdZ8Rl
rZLtgdYdlEF28PTxq9Wy2flx3yEn7vadrUGeTTyViuY1rqq7T45ZMn4yf2cD5BKVr47iERIShy24
N5lm395HOODK1ZHdjVpnhncjYhc52oKt/7V3YjxjfQi61oiXJWjb/kLv5tGdzrHW94QIOCmZOxq0
xRiRZbNEG1Ny6G01Z1PcwDEoPRIO6F68qSh3ZnEaVFD+iIMGfB5iYkJkNCFXtXS6XcbiGI2Le0Jz
DWxMoYmQPS65OcOo4z6onfyqXak+MBJNlKjPeQkr/lWKXq0Dl7dl6BlmYb9jdu6fEuVOqU3LbpLq
b4/APmZX4YDJ/XCpAm7OGC2qIj7PAS1bijd63q2OuzETTf2JZTJ4hAt5qvGXOu7oT6xvyQBaJBso
D4jIvMhBeYKVB2rq2A/pVvURyXD4cF+jlphMz/QSG3guK78AyAXrVV6WwEcN9vGJ2FB6TJyePOIW
ZR2Wyy5Gead/KKLgHYy0clYVA4LiK16srlsbJQumaHMkfP9l4eECYiKjGjbh2t+JleujqAVAsob+
KLLpQeYy3hlPexm7VtwapPnfQwOUiBmefhqWeoJxqvInbGxHW8LFLpKxZjQAi7wK9qCctoiaeVRo
JVzzIK39oiAJwB+RJqjzqZEjGnQcVW4eKzLqmN2PR5jGIOQoeK8zFyTka2GfUoG1OudrRjGe3Xsa
jFHzXP90xv0Ri2gD9LouqaGlnob9nKMJk+bFtWWtyzKyfNgYsLBYl9FYjbY134M2CUkEhs4NXnoY
wEO+f9zVpKlg4kQbsLDIZV7l/hLdYPKbPsGXLOIN0k4R7yyDLD/ld8LvDeWAiYq5uptA4l6IT468
IQj4I9sP4opFktqfGVXe/apHCteXQRKlDdfVPtOqAtw0wRztO4yDR019aMQ+qGfcjF5h7D+oL0H6
/fYzbxAU4rOqBRvkqmZjrmzwTlFbzpDj7Qly6kkNVus0BueMQsqNQDPc8sUISr+ZDcqmAf54HH7X
KKuvPzeV3NgH059QHTgcKFibugcwzqRdkcc5TBbvSUQMQVFVirgvM/h+kHAmZsLVS6Dap1lZ6L/A
PjqmZJy5CzfwXGSiDRnDD+v9edLt7beRZR6fNEu/xytLyOQdxP89FJ/yRjh9mdYuo5MUT+imgptm
W6XMpcb/C5oXojjy0y2SzuFX1M9whbcbeSQBxosZpvqJIMQDgaPUIRhoyv58cmlfi5TGzeFvyoWR
A+6rZdJBtfNXYtNUp6RyXGijPou4FzqDc7UbptYQDNVG9+/sHUjRz4WMeK76s+/L7RnS349iPyFn
EnSMGm+C24tx/nzLUFtUD8VEj0lR7qrXo2LP28bqlt8Q1PNqZIRcEL1pKIQG1+NFIuRvAGrAXTBl
c7RqQVFgMdjCtzsFY19nJBQyuLHOClJkoWcZSg1TunBC42VQZYqQXXwFrAPocYb0CtvRariJXuqS
6YLiJfG6mnuzgXsT3Z5phrSs6rBvwhubffFY7bU2Y7vmLSKxjz09PVY3yOS6f3WJGE1Dy1v31M0J
DfalIZm2pqLlfUpMEN3nxxGU8424kKsrBk6ZlluqkoxGiozGJTOXNlL5u3iBx8wlG1EBwHr+5yfV
khNaTaASa4onIkYblwPkyDm5vI7I2E/qeCkscD5AK2VhYJlhW+Ir5CA+I97Ckp7iUgtldgOCZfML
0UiOoVDExquby/7Wa83ScjtMMyP1pS6+ndC2xqwdnVYZmhgJyZJd6of5FVH7YsfihozrNDet6qiA
9E1nBU0n3GNwKMDoS1WzaSY4zIQjIprqUuySk+d7+WFwMfdA7jO95i0444wi+5oOCvoQ9EECVPKe
APCnHKc9671nhUXx2Gs3u9jsRbHSsSQmF9hZwROptTjKyOQWlXAQ6nOV15wFraq2Y/aQjWK8UIMc
tR5A4RfAE0DdVFvQUuV9mMEl21jidLze+JQ3LdDTaic8Y9TDvbVP3YFiSmd2PMsfsfSUBXFsoDOj
K4R69KRh2oqTuiKMNGCVqcSEe2CnP68k3tru04lF83J/xFdvc+pesP45pM4c1x6qwK62pRhdtodp
JkmxPMqkTjll+wW6XBMe4dn4DvgMpz/nOvXSfOh6dZZf94ptIghJGyoNwOknCyMKcNeVvH/xdiTj
YPy5xiiKvCLhzDoWXzeiGTEm+LSuVjcNXUOn7Adap5OfP+pC3BzGLRAy+bNf4UIy3y8YXGLeSRhb
P+mnFJGQ97w4wMqDmn8MyxXPStdmWUqh5f8LfGfuSBa3rcgn24YXjboaeCz/88R3hZe9gmUbANT0
4RukFc3k/kpmxzsS2r95TWFIhFuZJgqlFXhP1eyINJuyV6CMvAKqYpmBQb7ZzJ+UHMBVl2tMRqWK
EExWhbD2HfrOuThSb2FWH/XW3WyU+CJG1uW+4mXe7yt7ZMZdsgY6AK5EF1++GaNPxPWc9Cm+u4eA
hCCGPuxt5YCrJY+XSaKwQwjb8VIu+2ZrpA6zJE+8g0ZfGFBRmoZK1wmQgjL55CCDxl1srHAUp1Q/
gG9YbvUIGfqYNevqw0HMKLkEyZn0myjPy1vsSO9sOuvH+Tb1wnmoQBbnJc2/6zYKIEmIsOeXVG86
R+64SZ3NTr1SpRybcNhYCKt08TA9XzWPy0qbFeLk7k8BqQSbY4phjhZqnHVmIw0xMRho/TZQiMjO
6aBdFjuq6CNYj99i2xLz67pssbiQYeNM0QfuJfdB+s63fXJcuVX6Vf8ofhwqP9jv8j8EzWKPIo7C
MptPvVe8PNyEEEBdrqbTa0Cs6TtC6uJRIDUIhppzo7iJGecy+9YSfb0VIAsk83+hNkJlwqWq83Yv
dzmo2lu3Ag81w2brsqR09Z2238yyskNkqSVMqsYKTlHB6XrwKQzelyOqYls7Nst5INMAm5YU3AGk
GNyqppxgXJxS5TrIQFd78jaVfIYS0DZiJrmcGDDXx+CjnxEGBZJ/GKplWocpbDMr9cTEfTL+xJ1k
6vPTWq/8V6rGmFEG5ZHKC93A9aakhe0Innd7X/aYxccxPwdMBjPWkZ1Xp6QCKVW7HvpdGzuaTmZy
qT0xz+rAfhMaE6lY7/HhBr8BE202hKtmgkGBioUzlHSSq/owGRPRPqPNFmoqpWB9HWdxIexcMkEM
nySYvZ8wlyRGf8966cEXyweQBmtip6o6wqKgnuPDi7mpiA1MFPAzoZW7k36bipKgZKBtS+uc5RNB
HPg6oE/WHCmiqWByZhLFqdVpMGrI9BUAfMZ88IZbyucmiAw6+87RueLEuX3XeBbUob6jgKyXb4dd
Gcyv0YMi2oXSsv7GhzcBb5irqcGfTMHoedlhNHkzj7MPl1zsD014JWN6ZXg7qhhJeHmGMGqsmGPo
OowU13W7DR6T5P6wZLAF/pFcMWymLScRsqypgWj9SN2fKw2OOCZYVBJ9EAHD18O2MwFDylIhJJw2
Uf/HuPrx4f7F1BTpdHuY5M2QvZ2bsRfSxIDscD1b0dLhkLVik8s7LEP0n8SDSB9Lyu9/ROtK62K8
rZbkuUd+DBc17UC4eqhldN2sBaVF4pVF9MtZO6uP1t7KNkfFscoDXCA1Ds/Uc8Tf1idWnVjZZQUJ
hTEwjFlgSmvnik6VsEcJuAn6uIxGYDEotCVE+MuXyUcWKcp45MaZK5GNDYsN9ymEtDW2cztE1C3k
V1ExmxYft5tKPxHepSIM3BbiMa62YmKF0G3TPFsxJLA9qcOhHxOe90+umyN8wzoasIm0PCG5JPGa
+3SDSLOzRVU7tIQAgyFTIVFcVn1k6lJMKE/3dNjbVdogMwXq6OmaQ/STYlZiKHi/dh376gNZHiMf
CQWFoEb4I95GXjgH1UeHGgXenTzQkQxU0RP+hM9scIWxupYECGI/tmtryx8l/iSkWqpxpsZDhhbd
pxJeJCph38R7bSH2WTQ03nmMgxnw2DkarfC8xHRSlqV2NOO7qnjLqCe/1Ew+ZrffQ9hrgmy2mA2V
yp7rgIMxtY9nrWzI5S4hJxG0MKIkDbUcdV6sheEnTP4qbmlnPSaMYD0T9yluM9aEm16ElIdWtzC8
5YYbqHHDMIj4PE6eKTMiK4So32f4BkJ0dX0yuIldqq9V1nxI3+t88MZgkhx6kiiID6O0kPPGhPZn
wfHFzIcEvLQ3bUN+ym45YQ7U2BV/eF/64OaovyDOfQy9Bz6ABRYOjt23eHsvFPKFm7MTdayPx30P
t87l2gmtu5lSoabtXi1fVoqUXwyyqwNVeAsjNyeHfQ956+nvWjISMLMmEoqpucSpIqLRLC+4o86w
MGxpQYxX8o6hF7T9OHH73B2CDXHUDzix3PqmwTfNh8YreUn0cLRJ9i3HdGXDD91kM4pSZrArSNfL
0e0VDB29RepZH5VmGRBJIShlogToy7C1LmnB8fib+KGzKZFi1u19zPxhai3WDF9mhOf8UwEz4fJN
bmQxcxJLpkMZSH/BbIah22pIAt+isS+Gd/WsVHDQyJo+P8U0ub/slSIe+Jt1TUuXgcTRbuSw+NuZ
DyqNfGJv2MlHLRf1zd5zjXreInwOOP5JzH0rC/MbJv7zRP5ZttJtRPIoVtn5Bk6A4dfoABpTPFW5
d3IR/XYp/ra3Owkz6STy9xrwDIk0Q4fiB5Mkq802I6EfLqQNB9zwaokcsUZFM3DKnHIASTrWbjqz
Xsnb9jsRit3+RO6Sod/XHlanEsIUGH47dMVXheLVxssYjSSiM0/G5IKKBs3aMsUXR9nzsdlkc7Xe
jBlvK2nqIbIcLE0Wqpozc6DF8hyW8iIrUtkdE9r6uKovZOYWkmvKIqan0KAi+WDblUwn2/2pziFP
VxDp94xIjVIQyf4ZG9zOW1EBBHMGwFwvFCM5QbiPc/09/ZWqlbkPLtBkCtYMUpBj9HzGQjSwwDOj
8qoJixw6DhI3rQaskUoCvR/C8orIbshEa+DTgBM3qULNAU6plmcIJD8Mh66eKHxrmr8MUGXdNxKQ
AB5NTFN2+2StLCWXDj6ig1qf8ZcqJ6pNNuZ3bvGRMclauhYmRLYnHL4FT4MS3iCX7KA2sKQx8qzo
LbUASC1BI9mjEuzVFH8Y8A55C3hKEpM2omMkI4J5jAP7Qdar/qc2wdii88MMXlvJfLnJrtTCOfR+
/09COzbS2rawpM5e9AZTi/JqQoEaa3TxTgi8uBr3R9DLLJLr7oXxxJjH6UY3Vf6scpsMO8/3HWcj
R7FKpDgTwBWN9I3ATjJNgSKKfjvEtwlhyFHcrlBLa7NGJYX/9sJdGxPWC8vLZktNM9DGp4ewzf81
hewrlicFgHT24spVmh+YRFpOu2A1IDJRb9M3zur3bEhI7dQNBKy3ymQ5qxUmMxOF6qzmhiFjmCmt
HltGgGBV2uS9pMxD93XJ8Q0vOZj714MYtj2rHrG1WpfA0d3TAno5XcNP/YIr27iBF08Bn33Xi6HV
WMtaIyH6SyUo/ivgSs+wINFC2qr9KCX8GvAy2YFN1AaHn0nv3gYs+RpTzaWN8a8peu7Uq1DDd/Hm
3Ks0XpV5rxY8WKpvhFhNjaCMM1OfTU8uTCqVwX/KzTYQWpNlOUqv88ORjQ37vewqsRFyr2WbUu5Q
TqmQNo8PSlsDcoOKK4opqwO+uS2AmowWs57NFXAYa7ESvfyFuxWNuLsyUngRmXzn6qs1q5sbpfiX
8/ZQgODDgGYeweNV5jjqCi1us9SqY30jZ04Xo2nkN8MjeKeL13UPTadSMpOPBgH5W1z1+dbLtVw0
W3hMKVIJWbZF/wKFi6yZvpZIAJmsVAyz5g+zyQlfpwTChvqJ+gpam0ideJu5HxwBt9L3J5Zioau0
HGG2CVfI1us9OjGq5dPmZDUKJQS8j3S4T/MXsRn/NoKMJNyO65/R8n0mfddeBq8rgMn/w7nFssg8
nI+2FPWITYC5jzyGoJx/w/GOEzBTF84kZ+mfO8+cACn8x4BM5LbvGG4i7HvJzHAsycNV4DGdKMaB
Yk0sh3iWicQhtmXtbezXc2OsQgll/wJ6yXK/KBkg2Mo1VA1eL+fUo21ZuwSepIZJHt25PRqaXuby
THVnSICMsqnnuJjqKOQM3PURoEaMhsrpc0xD5RzzRM2ahOdqc0/loUiGvRShNV4ekRmPe0Xxg+wr
gqNhSKul7/PrK2VfI0qRAgv2Kc3EKpfarokKYmS0QxBiF4lrnvBEv3dXDYB4InxSNYglYE61Cukb
ONdOcuVdot+F/+UHoEP1pipSIsWi6L2aIBmFAny0vGDHlSY5CUyuW2H1/Cjo6iBklP7fFgS7J7KG
3ko7rb5Ny5b77A1ihHvForIiItFLv9Am5W8P1BCkKiOTv+oa5inawMhCOf5sx2/gudNDuY+/MYoS
9Ldp/JiBPEWmcq753G7pZ1Q7Zyh3HH60+uZ1KXJjZz0YEKogc2lKnc3mOeVFNf0MYMrYybBXOrwc
ewapemLXODNsMAmBPAPe2GUZuLEUsoIultUnk/AAKhvIC3EEPtMP9X26NOv15oOVjkP3/5Bf//6k
IRAL6FKjop1NQAx1+WbCb1kk2Umy0nPp8+c0a6c1QaW239u57EbaAtpdY9L2R/8OO2cQEbws6/cS
sw2V1RdCHZhdJ/csV6s5v9jqKgmHDA9aLRJj0l+5U40FA7Hzu7kG0jYvjoTK2i1+iw1/cwOUg2rG
Ox0Wr/c0+4m4hZxve1oB7FvVE4TzRqzeNUiu3XKp95ysAmHDdEBycLwp4Ez1fKOSBoceRtQJW8iw
zxDjW/ML50QmfYJYMvSQCFNF6wAa0Oc30PJcbdh0xjs8s229h0vBERTho5eR4J5v8m3WpANVly+3
FHIkByDeo/hJqIlo5qRPOOOn1Du6gSHfzWiuKUTvPEo3lD3PyKQxnTlIW2ypZ0b6fEMKUsZ+1+RD
VhW8P8DkDxDR1pphtX+GSG2JbG3P95fL2mCsbSlBLpG015YcT9HxQ2Yu5APyfGHK38Qz/yiC2UYh
zFOw4HrOVxUz0Q4ATl/P9Jqh+acZBnn1m2yClXYLn8d4M0yfK9YLcjrx5SIqUpzb7e/wNTwttJuH
e++hPrk3sAyOkIyJl8A2c5pZM//xpqSIdHvVO16B0Sw6h26j01yIBdmw0OOVMcEh8X8qIjWmwJ/U
tN5cVB/0fr7JyqN7sJbeoTaLSm2pkLEzCyLSia2FK4qzeqHYvGqOiqGA+YfzXoryoFtcL8PFjFoG
/vRTU/+qC4IlsJDFauFKn4eEAJLKfW1A82lRrerTampoqbuebU3r9D0QkHsLif/IijoYmzqLvnPg
ltQn2we7iqYArSXDUXKvTqSXZfw+8pAVESot+B0s9kQqqhC8MVjRUoDfC+kaNOHqLpRPN3tUdP3F
Z+EvMZ02ykOd6MCCAGOkSU8NKjXX0lY7+L0ZMQa6x+YpF6FD2rxilY0vwsH4j6Hd/J1/jDE+WktQ
Jeo4Z1GuGOWnA+0COpAT5aNh8E6tT7IAjy4V2zaH08BaOjRUzW+Apw3qYlp800v58ekCOMnXKVql
CcqolVvSjyy0QI50DGQyKE+QtY44rNap/pyJ6rlaCmvUM5RU0gPNhpIqc/FXZcg0vmzjksQ0e4pn
hw5qwslUlGdI3/Dqeh0qcIDMWXkgluXeShbR8RSv4r/S25SLswR1InMe86GYmpvaVuIvp5te5Wq/
o0hgoX05/21ViDPXceONas6DlLl5tw1gObTubXW41BTt11KbhuYs0HqxeSgwmdZfJxzgdDd/w3s9
tXG6oHx3NpkwdVkWxq8pm3JG9jYjdojtwZOimISk2BhVJOsVmT9TIODbdQW9YIHOvyBcyVV6Px5e
ZmdTWeEtgE1y+mUwH/Aqtw5+rRPJhFTlVZu2mKVtiY2LrtnKHEsz3SNDC1aG4hXZCaORj+6aQXZF
PB8lnp7/7KS3FXhcBleH+H4AdA8oT0wXQDxz9dGwbZLQZ9Mu1pU07/DwcquqffT8KBPH9PuhctP4
Mse6qyHYDud/Dq0F5u0M8kw+GnSCRw1pOm0Cit19Rt1PkU53RVbigp9URP08DmyIBwClmz1DSU1A
ZRoDsH/CPjMeQ8El7re8UiP6lJKtKUlVXONcLjr6nzxhNH4vqGQm/HeEm9/p1jti2+FyAZwP2eRx
ZnAVq6iQc36IyQc9kI8hty2sA9f/kdOvZcBLfJq9HrOFNpIIO44a2RHqi3qJ+I8gQKCDGp95hkQl
GQ40KEBy9nW64TW3G++f4/lq8z30zuTqadxJsln3pk6nrEePODBcuwEu/igtrUmLHoJo1Gysworc
WB/R5FrfzNEgrbRpk+8EsG2zpNWSubOBBdjA+LADgZlcp3USwe7ppaMNN5yJwkEc8H2O0NbqdhP5
nvPW6eQo+23cz8WuKfNCMwfEalfoLgPUNpGu1yb65crF0H+8zJaioriRbssbV2TBAO/W89qUePN3
YhHKbs5jUlbYn5MhRjaCxDlbq06x1A9bkDWz5LuMASkC4gUV9D0n+S2BGFQEKp6lKiBp3SZuMb+I
3MKftN4tGeR1l7CJbQziXNFcnJKx8nOootr0sERO/o7lBZT5ums1daX/OyUZ37lojGl+LKXnej2o
2ZF2h+ECCOS5J7NpCNq56d9l1OLtclJl4D8FYl9ibKjAiqGutkdrD+lM6AHHM+9z9JwAw3q1on2u
7LoiEuMKZS6ADNCvxLJLpJDx2H1ozCmDtIa9YHPC5ia3gwPVtA0z7a5c6R3hD1OPCTxWibx9plJa
CrRSdUXcZPiJvVAG6xbqREkYh1LAX1omMsLGVaVACohIxgrSGh1AXHXYKovoPJ6m6TzA+jVeGRoO
fcJQPvT1zTYZuHfPG0CTGeZ05LmVPNcnQ91SVSO8mR7hdR9nPvUMv1BW9cbW91xF81WuVYE5Uut6
NF1DxkSK+TxnONqaaAVfJtMT4n8dgsR5MouV3z+q9JSSza6lcpOZUYiZk6YACNZHH6/DOvBrLmnI
uY2In+YN01tSTXuYCE7oLydKvq8lsZuJ7kCVbD397f46nUpXrU9NNXxrj7Lv+LHU2pbvrZTA6KP2
VgN2ucAOimky7pFDMvINg1aTzvUj4tHAlOT/ylu64WPnilVAVeyeQ1WrQrIWHWVbjFiFSyUaQ858
VNibtz0B0Q7JqezKbxIl50ycMq95XGUkW8yC40vAKL75Ui2hSobJmEh0UHedUt6ysCR2rBgAMzAK
j74DEv0i5odc9b/LPYKj9R9qFj/awomWqwcEEJdmVOSYdiKS5ZVVZFH5pH5BYgOVHmILcfnNaisK
IfoSfr7RhCZNuAWisTRokiJ0wRy+PItB2Vsn7evsSMKjEH7rb9RYLssaQhUVsa4+cz4XQpEX5D2l
5KgWFs9UjJA9nx3hHMFydxYasrvBlKfc9vEvY97JE7TY4URBwtjl0cGhckyH2T+6Kb1FZuyAnbKL
CydQXgcnvqSvik7iBHFf7CRGIXsdcXlDS72NCyNDVV05zzP+3S5g7EtiY1nJ9abSB4esnTjRlMH9
Jkh9Ok9nexLd+akcZtAi5LNPaJxxeG91XWZoLIqtfuvtXSPEi/uN7tuflN/dNOzcNvoeDOm64Al/
+AW+e2n8tC7xdkgSz51WsmBT78NtrIXFb5R3HUtb3ARwVZ4H8t37sJN4SuBgfCrOFLL18y/I9oKx
VqECe3tcxIxQ2krZflPuQliC2yMSSfFfo7GZ92NWd0EapK8t24NME9ePhuBCVtz9eYZSWeX9tC1t
+cCsB4OkW3VZlMcMMIyMfZisCDpDdJiNT5AGYe+ih3v9pnc96Dikq3qR23gcJyiklU18g3gTiU9V
Msp3J865aLcmXyX2iLeKkeHQ+DwnGLOKos5QOwzdPDdXPL2IE3seWE6oAV/jH5r64/5CqZy4UVFA
uHhtB8SV0aWEA4Nz7V/N/0PYAUbVfqyIu/lpKC9fx8Ea31/w1uP7qRtDHJEB520oD4a+RzLSsZnz
jIoZw1tQmHnArxnZRZVvHCZ36ko1Ogi40vWgiBE/8d6XkQfvK9zsocMPii3eUEGKWirCmQQ5S24j
J752+wYEKGELcoyIIzfIPNjr3qPGjYpe4QE1tEiUERyH9CZ79eQicnMsFldysxgLirkD0dKFzfCx
jOZNS5exGbvW0IwT9levqhZ4UpF8segWmX6tx8zy+ne3QZswGsXW6KheNu2YnqmDy43QSVCAh36W
JRPCqk96KrYbP0H70NJAQmE/dCv/YQWwHV56fJPrw+L33RltjFzGHhbLXzQh2IRIYHpLSn6Wlphx
bFBJVHdbw0T5vmGx4aymjQukPocgNR/dsC54up9rpQsZfHNdifH37Aqr79a9DURLiR6zg7EIH2L+
qwJvjEgDggRNLk4zhmwvph05q8owgmSeT7LL58/AtqQ0uh5xlo+FuT9aPKuDWdP/g6iMX2zHU5FJ
kdgRs5oqwyyPthtXcZ8b//AdPYDKCib/8AVTNCdQHux6IbqXWpXD0RnYErSu18WaowI53NdgqbLt
c8kcKUohqFrmBGEj454sUrgY2jcKQ+H0OT91f2LaipnOSiFEuPU3T9/w43ib6UVBr0C1hUOgFpEe
Ddrjs8yMeFhKoVTovCa0ehLR6u6EoNKMC8mu9j2YNCBc3E9bLWnJbZibNRJYckxVMdiW2IUp5Wua
o0wQHcOk/md2/DqyoAu4O7ZgGeMHRgE7wPBTOgqhyk1r9FeL9qH6bF1OsxS6k/80B4ltONYO+F+G
OmNdv0spxmryv68XO10rTY6QVHZeVaoZxGIEDFmzh9XM08QQiKDcRw7LcURXqHB4VAfTzuhtD1Xz
N1MmF9JB3io69iyBd7NEVn8yQFSCqENZUix87LXp4iLvq0cYLZNsAe2hO82zKS9+3H6ZK2vytIAl
63i5l0FITHKJlGlaYnoeNrbu/C+qkwmz7EmGkbvHPXkeoxM8bSFs4pZ29byNMKy0/Pb4p+i2tAAa
WQlHb+MmgVrFt+PlkFu0rLWSZfirGB/SLCrfr8MCWDeU59G2JMf90go7hbdyJ0BbgaJXCaw7BB/F
7zZqR8Je1pE00JFRnh3DSUIGdt1C+k39hl0xZ/kGNHFwaxAikIeix1k7QLZEZ59gxKrXrEm5HzQJ
JKF/jPzH5dBS4kEL5H2NxlvnTca7IHSyr3NMyvXtFI647LbzaeWrtA2CiU4Ql6VIveDasTFdAwhB
qQSKo40PFaRaS39ChPb5GZAnwIBl0jGM0o3WmP9D3K3y3USUAv+9MO2SBsYZQGnbKh1WLExZNs0I
hKgyclWB8EgZSu+KfaMh6L6JXoSnHA/4t8zhiNFJInhUDf7PAeXl1dbKGUMdRjf0h6GU8S8iQF0Y
CgOHWhr1Keg7zI6j39fjoZoKh6ikmpswHkgQeJlywTDfzTh7NCCP+Zc7xHy68t209+EZ1dJoSXrW
jcfxona6nxsMloT/RGqZLzWOB44lmxdLrzIEEwSJHfHrdSkeyxrNOazXKJSCK/JxB3eMhJs8BZHu
k+dRNx41Rc92VgwVzAnkAUJ8R1Y3eZRjBI1otEJ2pblx1toTgwzHJIKIa+cmUXrCo/9WP3NupJ5N
0ttf6Gs8tVYI67z6KGU+BtEWU+nruorJjP/zsIu8ds1ck+5+MBbIb15XqCmPntbsHdoIKioPMED1
hKO3ijIrMRHk/sKKi+g5C99ePx6fWd7Lfks7cqwoeyQh0gsDVMXe+ye/YztqgyMGNvz2CHIr+a4a
BOr5BjklEENZO1obUp0/S6RFfjSsKK+Y+sdzJrtEqIV1XH3o8CbpaDK5SKZsykledWx7gJIopc27
eYqBPgcnZkD2vKWVeKgM0mWDq7eMG8n3kE5fwdVqdASAscwfuh8asfsrWgG06IMYC2r2+RNj1XBF
weGJvlGK/bp4ZZNbpVlcSX/T6QueLr4zGH9gwispSHgfKJdDw2aAzPjqMuJ76hKOt39tVNkGRvcv
6ebPBKJfZ01zAen14vwgEsgv3Jk7oob5DP52ANbxE61P9Gr9IDQ5EZi3/7Xap7U+FwZz3vQsGRVO
uDyrGJ+JbzRjYHhbu2S9tNPfh5yYLNR2KTY4RWDLCjwMsC/PH/7pPPeWmAup3lxWfL71DxeCyMiE
1eLCgljiSpCRGBBStQhvc/P12bBXl3ir503eZWSaiYqOcNexEcrNodeFbg6CV0rvAYY0RFBUCmxK
YiPUFZGUekfzypzClChfEGVq81s4Mt+tbkdPt88jXdMapu7TXUwXheeRl8nD6KjRZlBlKo1QBdS0
uYZoFpg69g9TRFtqnBsU4110gqHkNwUE63Py0ishAkW7mgSfuGnH+0u7xLKF7UTkpwKnRiTu6Hag
hlc4+ceKqhe6dcV8jWziWxqM3Dx3niebgP3lVo/f/KYNxm8hbeoS0WiBq+mTqces+0UTg79pUgOU
8aJqeu0BvfpoY1JW/GlVfSGObxjtaceF38FSYoKGoxua93jhsTqTStFwkMO7W1vCXIVIq5ABEO6n
U1+Fx1lW7cze6BSErfQn6+CaTSNUjp00qBLejic6mmyluV93tHTp68jgr7I0B+0yw3GlWId5Kd1+
3YcEA1+/pi5W6VbMh6Q2OJ3SiSjomYz0YkfrHYjyb6DIkMtF0b6cRgf/Q2RqYjQ5uHfvzr46sZj1
iMOcPvZuwPPjrxoMXuezox0c/CIuwYbu6iVGoBazRooM5fmogRVSUewIqpFJ02Yn0XKAKgnzeGuR
3CgB6mhX+C2w42AHnMWdkFeTV360/mXAjTLJ1GpDSOjSkTKx2xdXURA1rgt7nIe/mLJwC9N43CiW
46H0Vx51/4lB/d04SaYNR29cph7PAj6/ZI48y9kHOuNVinj9SALP5KVVQ7klTxnS5WK38x65T13B
+Ci5LOHDGp02lxPoG5W/1jB6Jj6Qk6pA8R52ZFQ8FPoU03Lh//VD41uvRd6cSeX+YHYo5cW2+Tgr
ZFB3+fDnt51+NGM3sweV2NIm39/g33TttgkLrsqJJWTpcuNw83Lkso1MOdL6GzpgDQtzT5GTgVSb
Y7g6QYum0khDeRBUfCC+hcrDiUTCr+BuSzfjYzXGp49lxCNENx88wKm7ei5b3P6DIgyCQIoKgd67
ct4BVG7eRGjjI6qSn0BxKlxRL7gTDyWZk2MaoaARTRbFvmp8+maRj0cNUjTKtJoIdsbMFce6AKc3
UBvZ1Wsb5/PgqNWq/m4DuJnWAXmTMFmOrU05tmgzemYTqOMMqj+0LwTHAf+N+RMljWUB5qvkD6tw
tCJwgfZhSoNMziggllbmfXmOnUK/i0OHfkJAlbnZ+0CCRV3Md1GeVFnz4VOKzSb1gonBSVQ1UzVG
6+EcZZ9gtEapchCqEDlBZtzVCRNj7QHdckusGy3TIFDv3p0w4QdchniAYoIsWq989UAcxj0Dj7mG
rFpY1vRs449xDbxWhSLJez6yNF8f7XXnjf/3MCr8efjDPlXXXM9g66r1TwoWusZbQDIG1Pe9cPix
lpVHTcuOsdpIkIFyIYj+jb27haH0nRcRM+BJsUr8efseAhLF7zTP28KEw7ouW6fO5aJvIF5iSqIE
GBhaGRY6nAELo3Wm6ZTMijydJmT249kau2FAiBKx8I1/V4BSAUyDaMkHixr7YEpqFg4Z4U2y93Gy
m57vkTh8xrM7S3HIXkG/5yThkVVp8LQM2S7eb5vSIv5Q05I0+FbrBntu7kr4zzLuZwJ4UpClEy8Z
2Mi37cFMpNnne45EADvJdZPIXJZCqjRzft0cCBiavScqxg5ulZg5MmrVMv7YdDBMcUtMWOufKcHe
Mqu9kCFfo14MkNrrcvAr2rUosYR4/axVf3xvRqQqhtd65D9xG729hjfOjsNWMXY1e9Wp47Tyecup
0uOtBi6JsumiqQenC6vBZr+ST6AWWJszXEfQCBavK8t8ifBqNJBa3QjDGlyFfXVlnZMItj8mBQgw
Jd3JjkH2m7Wxa7C4VkdhjNArVyecXEKA3JwKlMo47RbcBP7Yp8zI/DcHoiSm0HTHg7hio1ZUVy+x
lKdb7vBn+Lv5FJFlgCt5sYcAdRiQ7h7uX2rPwjaEe3SBbab9LNiuCbUrNUcmYZ1Jode2RFodFcCK
OUImrJEgi459pJmkgxUGGzKA7LeBRghfwQPYsgJg072soJGakM7ftEomI0B23gB9V7bXic64NsWP
DNVAD24bLJ4Hv6pr54kN2xBVjfb0R8wy0/V/iwiKaaLveCgNH161gQ7yMXBgYC6l3QRK91b/ZgQ5
4obrTNLoukoprweCo0VQnKaEt3xlQtQtOEn1sfyFKZ2domo1fo8BLdLQ5CT3POXIhJffGOlJNjvk
l/+Y1+shC3gulCYpjSVaPD632K1e72Q+5nnDgIm+4ynKwb/akYuQgipqI2zmE6UJ+PnrJeSi+KqJ
3JmSExm3TFkRb8xsAhaa+4ni+kLmRSHLn/et0KRHmpxf1nOdRpkvDbeZNWU7h1+7K4lHvxwKU+sK
iIZL94HlDkZSem6CvGshIReL3UOCcp+fBQdZ+kB2EBIyy01fLeuxZf3EaG+JSbwU0TGXb6cDbzdy
6s0MRIVRHQphyJXdMoYjFwcotWIMTsQwA9OCnqWJl6YPb2poquAHmLI8eiN4VFfCH/rIXjIoBBzU
+WDiCjFgdWLlopEhfwmUKuyAW8aipH3vGyAXgIHyOPzP8Bwbn3xEeAcsgeoCazF7rp7XKzYGKvNw
8SssgWxaUKqzNIeJvDA6cs6zpO/hO5DwrbPGUdPqtjjZENNvWTnoXfkWwF2aigIgLwsY0rd+Ulrd
m6NXXkpFtQ0V6LFZhsFdW4Jn1tIWwhYlG8cEmIKOrudAPbEe5m1eiPzoq9b7sgkdubAKna7ZnJqm
q62z5im2gz01SCv77P1hTRR2JgfOIln0JwwmXSmcpLRVGG0VZf83K6fENHBd/Jcw50un7oIabVg9
ItOdqKKLrZGSiEirjmV6OitEci01imPRlNGF+aRBwjHJKy6A8bA96xzRoQT44B22vJ7Tyez18QiA
cLVxseBwX6te9Hj6V1E5LcWB/0oIC4puMz9m2peaC+uglNwdWc3whHYrhnUXgllWJgEeyjqkj2Kn
R7Npu/etdXodsQvM/TaNbbeEF4BpDHZMCYtSxzYAHShYcY377caxCaUU0Js3FpbVeiFORPvLLg2U
LhebANJJZ1dT4k8fPcRQ70YT4l+I8DEttajuP+n12/vUKDW0fDyR9QghZI7XflyccUvmfNzO7ONh
k0RffvKAhd6CES0OO7iUcduwTy0eNxxyzfrLKfnQaM+EfwaVubQ38nQc+eiKnjIbpP5ZpXjiYQuJ
boA0XAi5DnKerVQYTZiPN2BydoP4xqqVPT4Oo4OXRi3mkpcqPAU7nXrGkLg8jqxZJtCZVM80Vc8/
g2piATnhe0091qzwtDOma8P4F4XJIfkW7zdbcYU777qJymewZOSGZBYWJFyU0U5hHqhLT4zSVD5K
CuJwIwgNa4l+DFEZ0CRDuZ9qbzWp27MI897fnXr/bPZhBIvBh0DuZuCLscjBGC2r2yQXThzojaa5
yBpL1QFl5xvhNQ+sdj0E0fhhe5Zn5eh4+MHOFJhqP+dPHGHl/w9l2+5dP/MhyiZKt4Vih/qK/H11
QxLvBZjVISzXnLHJxN9W865X4gxBy7M8syk4ASqrEmWYF3e+ljHY1Ww9UFbOk03pK7mY5j3SNsVi
L0ydAc771dvgg9DRLKRMFBMF7v8HTIWeYCKPzMOzcUVhhESx62oT0RSiCCI/T7BJAyHmEecycgOV
g1ZjYfSZM0sQ+TCgiNbcWD3rtSVq8J6GdqWoPBkmijPNJm1uCGtQ4MvuUGQ+r/uka4/xYTXb9OYQ
OzjK1YGqqKk2GcWmdz/DgreJRhcPTSfkXWt1bbnksCYGrHWb6FyLbmDNjOA7iF1thXyge5C03DWR
zB7AwkoATA0/5TVkCfNyAWQoke3ZOUU5OPaHtHJUtSA81Dcotbi+ooIXG4JhAk1O91riBxoqKr1i
SnZtkAKMUwr3tGKyxp4afPUipAPibIR0WWQ6F5Nr9JwzymY1FS6S8TlsxEtkl1DHyBT3MlkqKQ3m
TdZZvzU08fnuY/N/h86ZLJLXev8neADxsGvuw2PhilSf1ozPS4Bkc1P96S0Kvn4HPWbfzFtrTmIc
nKESyGXIPYRg1+WU6IKmVJCE/PthdSTC7VaW0RdqkYAbdVsJAn59bf46HBOPLCpdxzZbBqAmg4fe
AQLMrxahYWi+tgCKi1kgz91FKOs4PTvi9xO1PL/4SN+Xl3qkolA28vxzpzXvTlyJj5XbL2vW8Fr/
nUl7t0FrSMOGtxSNjOa82v++YQRt3EqV8sIhRqqWvtn8wDaCWLnegi4T8b8A3pDCSHpE7ozPe0Lb
p9Y+eyaOMKVIUBggKOOApTQjZBIgmbuGvJRUlgyrGOfWMl8FFEhSdcZb03Taprv52M9rGXgL77kv
a5SMKxF2b3KMJVOR5eiXqRdXvV3FLrDPzvtiBhyzY3djJxtykM+s+F5lASCqCVMDrwOl5F7qxXA1
Uz4ygG6U3riodgVXNHd2kX14D/8+TKlYsmpn19AQWz+/ze1z9stemKT0rdmvuPc3cwkmZs48gYcZ
WYgd4sLN8xhXEQgFRW9l1pgaatZKDKZVPCVabaIqveEwGT7fsVEvBf0qGPjJZIYcJFXYz931K5wC
iyAi4lFzFusjvRoaloHJSZYViyv38k3W8DZXU/lbPOLp6o3/Vw93oFF6thNyWLDW4NsK1UVwz7Lj
xfWA2BurQRK8cJKQNxsqKiLlj8NHSLzRWrkXXv/PHS0m3SevnjrTR5ecR1SOG5w3iWDkUuTIUDcq
yAyrh26xC6YQeW6I+aNcRuOwiL5iGAXDZmside2EoMncaEfYvGrW+wAssB8QRiON1oqWSIq2lo4l
LI64IsjsooOHgy7YEzjGGvSkncO07HCU1ToW6UOeU0iQxP01HEHFk9HWF3Quuabr8Besx4Dm4T0u
MDt39e/ZGey9h4TxihxtCdLITcySo/G1+Y7KnyUHXU346vbBGlWMXjOtamJY1gJuwJwuXacpHV/+
lBuZLgo37UTqPmjUZa8hrtEF5au2tDsafe+XD83jqs/fT897zk+4Mt12btkkDSrZj5MP1raNkgvf
O6diVt0069KvIIyQt2xB0DAcNaQY3MXduF6K7aweJVLQPJUfkyq4UYiGzdAsczebNHLCg+ETEd1r
55q9pNiOvwyqCTISqxV+WBejJ87nfbMpppsd/BU7mRtsO8DMVYjoYi5ZHwRqudA60aXmUviFTUiz
UrXA9FxzNAfFs+7aWfj3HzHcOG0mvdCKD45CanBBiogIK05kDt3H49azqb9JyI8oDX4eXKPxgn4T
029zpU+/yASyqep8nJthe2/kVBrjalt4eOpDka0X/2Qt28GH0zRE8wI4FoS/NK1L3XgpZ91znKaV
KLCmS5KpEn/aLsfu+feXdL9XGA0kHJA5dd1yleHju27wK8tiwOv6FZmEfaCI/Q5awXTNzE9xUJBQ
cjuAjwdLhn2V7UTOC4UA6g5lnYphwVx6d2X5ai8v6ay/JwaCpeRG7l5rgIT5uONigOyq7g7tBvoW
rz6sth+dBqw358IPgq/FFWi914/5H+zGU5e49fvmAd2ZPLzJ1aNSpIoylR2cVsuB0l4apM9yvlZx
oC0pkjNJcBlNlHCHoU9qfxEovYoWIBLysKt17O5c9Hjkmil2DHteIV3WbOOVAxMAoEeCop450VbB
oNBm3E/YIBv7cG2cl4fNBsUUWuXYbejVUsjwgk2SyjroCihAv41mC5y7pnwTr49SpVh8AG902wbG
4+OS/NtsjXNCK8ZmpC8Z+tc52d2cq8FhJqomER4xLEoj5GB1YumtF3qCk+pXVq+15Om3035Qnv6Q
JvN1F9W73E4PCwuYRQMXNwKPfPEzA1URDNbfCHhD/uSBpXq5dZtUiOZZY9hULE1h8B93wXRxpJC6
lowWTEIgupz+o366ADs+Rh2nBZxzh9TYMWtzrfTFRcKTK6WGjy2zALEsYz9lKxigrIZQ1Uv/826F
LbXR3Romqg5qpBummcOpwneewU2GXhKCOAwWiegzemPlsEEIu8XTWwJ4FnRHUGmVsQBp8Hy+d+dN
YS8z2PXgsLT0h6VopFvgTVnKvhqD6M6JCtcqlpRTd0dYJeIlbTLRg/Iw5fjj0shawT5ZTJbtZTLQ
8p5uUDIvPXXATr2epUaMU1h+TuKGZm2rYUXfAuDELDsZd3IJsxLIHW+cJljlk62awnINUik7q/OV
Qg4CySoLMZvM6vFNSLG9QhD027gaSY9Wpf7QWUEP4U4gZno6oxes8i0eLZUpJJtMVpF2CkTE3AlU
kvPHlSDwdiJ0RYtEQrL00MEQv/7muwGBGy9bj3VGDs4rkNjnbwDjhkICPMkNn4vyUldw9oKq09wx
aFa1lxfagmacjFy8pNDClKU/URcF3QOCNHKd28iZGN9YxDWBTu71ExrQK7RMSwf5KJ82LktmdJdw
3URC4IWVKii+MXhY6sF7/GQzFKNn3Qdb1XLm12EqBOXhnKRYsG66m793M0kFDk/k3DFjFS3eAl/P
zBzj/V6iCMXMzqXT7Z/DMfJIJTr3uOWy/stMxE/mhe+v5w5HzY+yDSJT+s3l/Lw8NIMqeJNqxOo6
01t7XV4ErN6+jqpubQ5LoLc2X5zqTXfivZgu1KL82pKaCNhQKJhoUTp7WxrNk29/QN4uopyrUM6Y
VkHgScuQMgWha6wgKmRMlom6vwjqHcspmDaa5O3jWY5OjvJdbgbMrNsI53DjzzaHyquiu9Q8TCkc
nnVqsyAjgX0w0SLV7EtHwugJbJThNTE5WzWSMtpkEfqnmMwLQZGZ0q27pz2X0SbY2nGlFHEL/gcl
tNCDJx2OF/Qox5+3glmhJ3ja4PXsvnsSKZv1j9Exrkvb0AgbOiBLwXdtl1b2dun6pusqJ0zn9S8l
nrHglVf3gfc6uw2EZ5nSAf/CSmEVEeI3dQhU0yHHfDa+eQDC00QMMkrHQzEz1w6s0njbce3UiCwq
R5K5vwRkoONSdrQQkm6Y9sMMrxW/SGDvI3MsbuGSdd2e9bhwDMzh1dayuiYBrXIvv1LxyjaqsJ5Q
XvmzD0VVrVxYJhI310FvD1S+rhiFV5scVL3xGX7LbComBfu2RguTN+h+o5CSW27/pGH/TeTf0qxC
KRY0FCQ5b5PtAPp4312Xayf95KcCDksoCmPsN9pSD3KYsrX2Bgj3BW+nnPe/ma1yKq/c90sJK+PS
1FM6ZLtts1D19iOgJ1Id5dkNZl5PZNgWtsvuLfLjNs0kQHdo//xDgXljR2xmUmgnaYaBn1dvGfeZ
+ikTK3gLrTC0Pts5O8xNmYBnS4YyxL43jdf4CEu0PpbZKHL4akSZ+35exa1bS9qXKFVi9qdeoqXe
HuhNwU7L9yyYpM8SlpCPYcTj/yW7XEzOk//kbs5Y7owoELA57x8qkhMOvpWB+urpjXnsYTJtO0xE
vrE3i9hiuGqsblQ9693H4rVN++B1NQo07TXTOFq2K8wSx5jwhutQrBrb9TCPXHuP5dp0mFdmt66T
6Ajj/EEsF9NrJMwNBVry9KgtkSdpAyPIttfQIpgzHiDhXmGDm3Ll8cvdCf82dGJzKKPl9Mjc+eAQ
OeTAERL9ra2OVQxvmPljGyWhcLiGaLsSP2tSrhIkmnJecQN5PnHX2KnqP/s3DYMym+z2X5RDyuf8
zMBUzlxGdtu3EaV6kiRCedC3dKAhwpQkIGf1YFKzkqLDNaAZUSdl5HZQkyCCNez61e1vQc9PKgcO
+f7S1ymTybWXO//TT8pqkGCE2a+ItWplwY0WOkatyi36M9Ef/FRLsf5gM4BUnl2S28hz6TDkudZx
9NbEqyqluNeouVLW1iSo/D3Y0q6ThjPty6+sMh7oueHM/9WIFB926sH/+KwZxnlizBhsCU4WXm8x
dLW0Vm9F1YD4mYpwYXVj1mGHQL7MIqvBVqGPTjTHih8lrCJTAaoWOQ4mItSPKq/SaP0ldF5xvGGw
U+zKkqv28DQ35iU/6Rw3IHIM/KIHUHKVzUqQfvbBd1neJkUnJ9RB0L71QllLIV++BDeqqpt4J0d+
BNmpeObTwdL/Q3GRT7ep73c0iO9KrJGS3PGHHQs1l3wnThENvP5iSd0bLsWz19JyLVbObT+9Cr5a
hL5L5nrni2Yc6mNI5fMD6j9n1VJxx7i8tsT2fy3KX7EHNxWglHXWDavWD3Aat/tmEf1FztiJt/tg
xisOvH1Q8q/1LmtNahFWUnLAu6TyrUVkHdwNQKmaMiR6saVTyqCSAO9DT05ijx3WNLeuHpruht4u
wGgMzpomwc5F3oK6iaJQTnfdxeCeFbeb9eRb2CFvGzZH8T0NeJF6cDmsnXHvY9g7R9p/nXMpZRqi
kUzYCzGXYU8UhZc2umAQZDqC7CttPqV6JG9zDQkcsfrSnUDLsZ9KpZ8/Bpsob/JDq8pjjeBPUe9n
VsqYM2Grev/xbqCky2GyY+qbH2kl1dm+AETt46T1f27SK5nkWARE630kzAVQDkDTHoFeQHAagP3a
eZtOsw/uIY0D3Jqb8JVMBrN8hQGqXlhj/6Rx1qknTdip7fLQsxjedC2h2nexMOZbBe7lSSG/9Gyu
0MCPN2qaOs2z8WSk9TeikTJ8Zv4Xh+f4vcMUlTGcaC0bG7GzVm3z0RuVNY9y4WR63l+Izeh3PcBv
RQHwDFNYqDhzscQMkl3ubw0iCFNFcev71nzlotXeYkeMGwt96XpbtbU8hIrvqBjln2YeQ6nfuBk7
KFzYETec6VSLTNi4JwOFymDgSmPQnYU88VmEgRo1pw9OWZr+93aPZVpCRnlU/fI+UKqXERgtFaH0
p2xuFcitXn2pILX0RZP6hU1RK9URsH025aCHiNaQArHcno6ZWjIMy3qhGSh8VMEorDUaOXtETJKD
FYlc/GSkkzVckNqGQ12j6rE33MJGDhj3B8T9rbN0Sw1hWGVl8bgBtge7sqcMVPc/HXpD702sAL1P
DOyiq8MhoqrgqPs5hnHNq9PQy6fSycU/EnjOvCcgGhTrSYUzZO4KQ1QPcFu9hEgq3PzsoK1Shbie
frX+rPfqIkU/OqyCFfu68Sh316rydVN9HgI0uaeTPx7pxsFS/FbZApeC2sdaJzK1dwF+cLQuhpJG
HbrIzxjv9EvrE9rTY2wjaVkWVWQIuUidTICl3Cr98kZZBVAdSVcOtqHCudwEVKnmdgMpWtZtMTwt
Bdrnsx5FZ40TJp2VmhIj4qgOnIyoVnZjQfVZbBJ5Lxg9l4CB+B0+/N5SKOYAThzLvZz5ed57DDRD
TQpksQJjypiBi7hQOnz8swaAQuYHMbVsnMx2TyvHNNMwmc/p8/8n10M8sM6hDt0w3V/Bv+3fi0b2
mK5R+dpGGsx/DJqc0Cdjj4+zsoua+XVE2ipm7CvkVekEtAr9cBhGDfh95rkqm48evUOkxcqJI2xE
7RjMbnNjBsezjxKKyyK1cZ6jQwT6RZFxYaw7fVTTVdslrE506q+N5vImknAPXq7aZYk8bd3/7K+i
K4iccHezT1m7RpGri0hpKNtgXfMgj+L6Ik4qgm2nQ41pP18rODk+MTL/AyD2wHM/HVnDocVNF4M3
D2LxDIS5DgRC5xnis0EUCD6WAYrnUQmpQfTqXzYsVk/qvc6CCJB7ASMD/u0iuPstAWa8I90YiSTG
MB9POtTfuXPYPn5gU1Pj1zI6u+SsidTkAcyKch6SD8juB9/nerGnGpBzX1IKH5/Da81at9IZjVDL
CJSoB2jZkXTAb5ZPIXyB0y4rxQbwZPjLnkgyS5aCwzLVSDjyZPUhh4soRCa/qVUleZyVpNglRape
YkxrKGl1erTLXVcltTpxRYC9ekSe9qZlEhFQQkXZwx2dSPGT88I/mC5DsX56WyMp4SsqRIvwv5XS
TVuhLodC47JrTamu9mf9xQN5myx7gJLgl4+DBsBXaZ0tDi+bQoqttWB7SNiUVc1UOpUbBXccrf9r
LyMaTBprBh3YvLNuORKjefYbYzoWrPBvIuasMC+PVhRx583pUh4cjD4jTmbs63bAWijH3p0Lg9pH
oNUdBW3otuGlVhcpyHbSJU6qwKwiQyEeNRj/OwZHOUu9Ekoxia1oNuEGXPin/s1yTfjJDzjqt1Ip
7IECXtS1nshARssQPQxOzxQMgrWYMrkqs8tDgSZN3J67qriWt7ZYICs916e7It3dF8FwVCmsbrdt
Z/Q84ezq4WeS6wKUvKwTB1C8fN5OWTwJ6twH5cbosN3ioQqH93wEAbm/0GqyqeNcnxv5tcIShPNM
jTECl29G2+ccVRzVK2boaAy3UbJ/RdKyuYiLXoZc2zqUoAZLK6Bo5/UPqG0IvqmnMNqDKEL2ECGL
ySCSjEGLxd31tZ75vyVwRPgeDgSNd4c4G5MQVA5OHqyIZM0rjBi/NQ1tLJAVWTZ0qRK81pLLJrC1
H+yzNl5ZKPMNr9imeySADCMQ+Zu4URcgtpa2kGBC+KzWwsbjU/Olcror9kIpu11h67aU6VjpoXuK
FxH/AdLl6yX80ARLmA1xti7LdYpEl4+EiU1lzzGlTGmAR/H9RmVukY0+FahIgl8L9SXZvhLsjHzP
jVkUm49mReXrl9W24rHPUW3kUwLWmsTZHPxQCish2QMNfkZ8Q9cRjLdLb3QGFh/tWTS5S4+F8h2C
Re1/t4UzAhORxIIQXJdARVu9+Kl+Wokkmaf8NJDPOkXxXpFQbh5fqe6CMm9XvnD8wm+nirfTNegV
7ECuwg2ALHzvWbYvcmLqdGVFHyNNZYTgJ7I9fkDs1Setpo64M7vmJ71eYoy7EmHSO4w16z1BpRDU
PAF4y1vbb7GGhCHBqJeDUoUcoujov9zSGMnFFChiylErMkY0+wSzEyQpdj/Own6i8RMsvPtj6vPd
eQFx3kU4L1bjAZy03NZ0LgLnVO0UZABTKnOT7QD0lJ0sQm5ZEzJU2+scpgCoMc6Zn7hQvGoZCwLX
QdHNoZgpvdLz3t0LAd8u2U/oZlEPI2+i4DbdANKY8Fwy5TN0WCFSR23+IU0/Nc4hab7AhhaHPMUn
ddqaEh12RiCNaUDvIO5ms1Kqy33M1yZYFw7vnpMqgSdtd7HL9vfqf4jE9LpJ2ePOYYROSDWP5qxg
o9nBqxnvLYO/c9SKNqn9KZE96NpS3zubby8cjX1h7jzVfbrvRr+pDKJU1Z53V5xawn2kXKxgz41/
tRV3BxZZuNEqhRkcu43wyFjXDspkIq4Onud8TfVevZx4obdQyX4tIHV0QP4PVL4Qw2gnsTdTbXaj
zeCn+0bAkiiVmiXv/oioaMCUhYORE9sc0W3dD4BjX/Fh2kjoDv1f9RUyk5jnH1ixydfNnHrkHtgx
ibGBjpwTKrqZ5tgPggpieNnKm4b5cOYPyHSe9hB2ncJKZVIgu0Adp6pTd3+zc94rX8EV2e0U/2Wh
LDS4VzFwVQRP7EVCVTsArvOd4WtLI9LGfF3ajC6m1/P0wQyuqXo6Uc6MrraJW8mc5moeRdLUZ2UD
Nuaht3zrkMrBB3bPhuw7UWT+fR9kqQYLILNkuWQAh/ESusql7ixkeey8+/zkZEesw8ssbV7L8ZBp
36FC+OA5NtZ2AP4PYcY/CQ8dh3vkdCMiJLje6NnAkmqtRkhCl5NGRXalyQYFAQF922kh06sJNUjL
4LBbqbOTwKJVdp7o6DaBW2ld9Bs/83ZrG8bdyhEZ1T2r/dUcg9bH78XDAARnANQbpt1XV6Ntdc+r
GYG6PLXXKJqB0+NL8ABD1nHIeTZ0d2SqRtbFLs3lJ1Q+SLJyVkjrM6Kd8pVF1ptAn3nmBMSekkpM
Lw8EJrqEq/Uuv9rlUD/EzuURY4FimKMOCEHXoN2N/iEaSgIqja3nzi1+I2FHeoTiQELX+7R+E8Om
4QYdS96nVmYtmsxuZk1cu9X9/WyifUsYlmLeJImhbIUlSxK3aOGvhEoJYTHPgdFICZ4m2epDcoYJ
/hVo2AC5hZMrISitH8V69xiSN7nCcHNkewx0ICJEkP+TA8LPNIPSGysDh5RHJ51YjB0fh+MEocD8
qcPxPtyCg4IXsPLTAxoNQPNEnwhiNoFVdnhkGE5HWfB1FBH0KImtQT1rEvy837P0bX81nM2Xtcca
cIFQhogah+iX5CJCps6Thp9vc0CKhYok+Z6kz5FsnloDZl/yOnG+mA4ao1bE26o0hUdBD1hVjlP3
QAumE8zhyhhYuMjOZ2DShPpIHcEMHTZ16kiQOrEIz9FVIbGIZgHY3844L4CyUDVfrddjGoEvmc+F
KT/8gURndmQx8umfX9PGEJRJknitTfeoP346tyAWHewBPylQxxn8wwLB7H1la+ozViTFtpM95V3s
YVLevUSB9kE30YvYdJ0xAf3ezRny43eKvzs2ATnupZEakHGYqlYm8XZj0qPkeQkuq+5DTjsyXIpo
ds5/+uZdAau335Ym+grkmYpAGuqilwluOlOepy2Qd12ewt/R5S22TorcBevCH85mS9Fc3IXL56Jb
8J4GD2OIcVpRkpLWSvbs/oGHCM1m35TCTeUerXuxPgj0VIq46PECFvtOMaq3qjZYPIATmudZjqBS
2vvSjc07TiN5xEpwlhXBFyAMJil1wW7URKy9bW7Lc3ISvG7rSk4piw4P9HPxyyDESIEFDSpTJ5T7
eLpNmZIorAgNiFTzQzFLY/DvslMoWoWqs2y43DqKd1X2iFIr/YA6L91b9HJTa0jpSHSK6jzxtowt
cs6GKKXe05BFbSSxBVMNFGa+jqaELOAgyt9jSLKqVy6dXmVOOxk+IEoWAkYh+JESfy6MAwe57YdC
1QK042ywN60G8ixGz+uYUpTr44WQZtE7Fjza0VyvQUm328+Dx2sPKirSv7FS5DYjvcW0gtXpI9iP
aLfn8gMf/MvI1Ifuhk/qF9wPTgduxiO1i9aqDSSHRSWwvw6wq/O7UiUdxaEeW+MB20Lfh//vCyqQ
kMCAM2+uQAj1ArKUyPfguGabv+6y28GUkV7Q01L01z9rLrddPRWJcEu6ehU0NsmiLf1GeBv9hn6Y
dcPO21pJgNZFkvdBogEJ9vzR+2l3bGHZxixeQzSfdLr9292JK38qZ/IrkGKKAjgCuteYGY4gVUiC
FzAaWZMyhZ+h194logeY2F9O7vUhZMnHsUcp7NsLn4n2sEisLhPF2uLEphT41ZSvNsJiueW86phL
7dSed9MLJ7xqSc2a/LDKm2hd2EcvPFlNztgAsMOlJpX6E33dSS5z5ahijP9GlqpWyEa6spmhA1Z4
4Bnb8m9JgoZpqmb+P7YXl3Fh3J5qMY77p0HaY9K1ItmU6TlA9/lcbq1BcemXXAzn3VulArkD607I
lrKmIsbrZDcLzPmjB6QWP4e5FT5paQzjbaWO81+3Np/vtV3xYlIDWsHEjlydd1wRAiFlXBMnmNsx
YNhB0ckdpu+6hpw4h/NZ3pfBlXcGvyEdaarhrodGk5zdB9kDzn2W506SCcwS4U5MbMjLTFSAUL1a
kEYzY39ogVhFTvB8RT5Z1DpspFhWAiD/nb/jTDWTYzza+1aPjt2HgnccgyIuEfiZ1AwRpCOs9Epr
/OanxCyu6YUAujTuUyjH2Mg/DsS5my5h+lCGrumrA1eiWSiMJmSU+ueNc7lJej/cWDvnD+DGQ4pM
DQPaOQtTTv2+yXC5o4X0NYJ5J23jjL/HBJ1JQ2sB6GJXHW/Yrq/QVkAKmtzYOWqzwuBBcjhk4VXR
t8ncPUGCgOvpPbgjsS7kVQKjgY0oQW7SsSL/twhpci+MM+4SEak+2q74xff/bStLz3tCHzOlMG+V
NdzjOZDAIg9Es3NlXKE/0dOBmQBZ4Dwk5bOyK3AXEE1Ng1wyBKqWRkC7wBpLpIrZOwQp49d+BRNB
a1wz7vkrAoLJDeHhyzLtbqpxlmCcOi9DuCaSN5mwKNIo25T8MayZPA86zmOhmGqEfVF/aiYm9y9Z
5gAXsZGod0rgGYkggH5Dom9VzVB7Qtmc2KXZ34r2NT+GvXYzmTPQWBqieFd33BSsTMd3zQhkB4yS
jWfkwU9ae696Zn7w3zlhi1FFxl4aeNLZsV8IaMqvwoknr7DlFkX834z5KcXXsUkCdmFLJ9QuEnmT
lHzaKmKh0suX61h61FbCPYrJ+O19AuPAE8l2iVLNkDlHRx3aBOXet/9Xa26lC+p9PTnOg5rRJjnK
UtxmqGTNjmp8ejzhavu7yLdIHAtzsIx2IpoWOSUewQjP9VdIY/LM7KJQvzZODPv8Fb57b8zPlRcs
rJVANcpvCMG57o2fDBYEtR/eWs94rGq5ianAr+LmK0bvgt66j/A3nIQh/TQOYnk7wQkC177O2vvd
84cl7uCDTH7otGqHZ5hK8umxyYCWHOwp8/25YqHDEOhBMGdK1MFBdPsap2gBTICuEDELqK6VPJ++
fhTbd5sAB6JsaQjjRDLlYjNr3afPihizxKAiIsUYSrJ6xIy0JXL9XJH5HBvKpzLeCvhFjvwVODyW
EVolgEuF/zatBBpnwG+HNq3t54ReLgesILboQ1foifzCxTa4VQwQ5qYD7CqYXSLmDjTgvEloPQcF
gJLZdv+avJ1pML4X1kmoDjy8AxcZdp3ViWszhE0NMmWo9omOE2MrjeB3qRtGApB4unzQdts+YERx
jdivIXoJtEQgTWx0cldBjh1twND9MUGR7A87u1e01j64lnY9IDCNDQZk4EToLWcz+Lfl9DiuYTJL
ehb7crZoXrmtoHZUqy/B/hiwopdBvuf9xp19a/4rDqmPo2scn4sYGr0T71DzwYAr6kBPsE9uDpzF
HKoF/aPAaN3WCGAe5CSKBIzEv3i4PpVvkZHO6HQiMMlxBZP2TUSxClAtU8CcHPlZgiGtPBT1B5v9
g3XNR+mWa534FqsQCe+cdX1mC26/+ivKSDkfd1kLGQdPimsH6oHCoPmFznpkmHS1vpONaY6Vfrct
UroyxFY+T01jNV6ReP8pR7DCXiaorJJkrmBbPjpSbMzqKT0RPCiX6tWgPKqS48TOeZ3AazF5+irl
wzYIMQB7UDQIDH365afwI0wSgW+UKLTHj7DyNQ1hKitVh0GbM6Ly9012zVWcuZ8kgyOo41U4JbTN
wFkrZGq5dZPxuQnJ2YiKLAW/tWSW1Oxyp/Ib3X59LQ9LpnYIo1pA42eHBGSHkBuqjdZqMnJMoDn9
PqVYtvJIa6J48STAmahl9Nssnmh+6dqh8P/oK6oWItpTGAV+OXGfbhBvv+IQ96pCjzMwmV2nKwVD
rfE7UbLhAghvCcpjaiYrT9wI4Oc5Q0icpZiUJSVWjlnssRUuguwUO6olNNi+4jumVgufP2dTwTDW
5LM4oXFwkfbuKF7JnOcS8qHAffWd+Q+kQXKXMuRl5J9UWjL8rnN+yCn2S3zY91I4UaPwczAqWUDH
meQelQn8B/deLM4HS+lz4lTdwye4hyJ6X5HT3PyCchyqknC62cpQ1c2hM4szFBTj0UyeRHaF8/FO
ImQ2WehBg03alvAt3FbXJyWn/fY7VaqXvFfdv0OzINLdhGXagtUEOzNVGpV4FHqZmdiQGlHxNDfc
C1Ex894ATMe3nY4vuCd70erbI1nlzaiEY/FAA6wQJwYldflFF5BXkh8Q5XqYgaAnuyaQxydc7hiO
2XjB6ey04z0SJDz0gtrPovats4sXjwQjE+oySwNMB5BA3nVZnh1Fv0NavWypuAQ9gwR6purWHa8/
e0KdaWQ3XPAT3zZwYV36XpFGJdC61ZgFBPFBxyGskg8EOelgRWpLit4YuBe3JpfyfrVqxi1Yk+2e
PkJxJfN92ipLjmkNdfOOEmU6rDtHqo/XACN9UtQlHgrGp2lFfbafKqqeH3CJ2LfcJ2VKFpwbpPDF
D0TT3Sq0LLiwUSdmwS/Xlktcd2JCKbIPxKejh+pC0LvCFmaAocZt+DIcSFfAECc+lh22tPDxDoqx
xO9m7ll6S0hthcZByEV55L6YKSU2HVJjTqgrSk6HctcRHQciQJNAieVn4XYbyET8YNIbl2hxYCoO
kL8OS/+dQsrkkLqtC2oWlz05rZLOwpy6tkStLJQ0bTqHSyqFlPsinM+Ba4LZ0objYx2yfEX353VV
ZUJxEFa9BvbAsm8fal4X+Jseq8K3Fun3uNgsTf30WUKEtV5SXmWk9HrSBiXabUsVg9x3DJZtugSj
N5ySVKlwg9OypmpJMALVWbl3mXMDJLQdwcYX4+dQNXwtj+N9AjJgQrAcIREYlZwQZySOAoG6vhkj
7zTvxl5r7ONBw1TfOeVsAhobh7wyjXnVWWgASRnzapZaPXrj2hYov4JmW0m8GZvPgqv/QoFYyaSq
9F0rUtZ95hn7muaBRaNrpvKjfu1I6lKVxLum7ou9EBZ3qw4r+T46U06OotvBJRoJqbKnns9jDaP4
g13GDoO7zPyLjczS+azRgdptZ9iEa3iREoFwheN0nl0q7pHKxuzht+/njvRJiK1a7+z2f/3soztk
LPGfb8GUzhpLMTmS4mtbPzcAKieY572Y9AfNHU89ZZxVRTAShJNaiX6YDh+/0JHV1G06l2BY+QRK
50xp5Bx/Mw2pYrAaNss0cYYmP5m6iqcAsCqvG0UymKraKnMnFqMLb9am5kevg6VqhWUgTzTCGcOk
YbcS77AtfTmeCeqhkrI/HwrUl/cJwMcvG955rHVyazORQlyZbMGnwuPZWDxBSXLBhlAVybGZvfKW
rKotIljbXzIQ6SW1NWG2vn4i6gNRSsRRVABTvpvRjFAMCoIRF1dqSNT/cizlTZHTcWgWj6L5HQt+
4mJ0khmkUqy7hCbrPbvjtt3YbW64FfxN/YTu31w3tiVARRiQDkqYBXj+klQjPY/BPxsh0msfPoaH
Qz8t2gIb96hn9HHU0nC9ttf7ZsjMKIzl9htx6HENh8CKG2yFoWyvoDOAWauZnaQZpiAdCL6yxfo7
YjscXmlpB5SvZt+vKV6Y0CODAyMRK59R9L5uDF9IFpKRatQW8NU0dzYux7N8ayyzf2kUefLy0S04
x7nFKAnj9HVh1jEehesFfcJkH60KwwjzIziJYnjUPpRCufchqoc9ujnfIpWh9sms1gsbBLciTvtA
7ZZgFQib9qvsxhYOrH2Tsaw2pUCwm9suOflHhDhfFSuUQMrMPydhtPNvbYVlN85YKEgkiy7kw7ax
hgQO68HRXEYC9rmYrikt4lnVx/X6jQMFAZSDT5FXDju/cDoNa3NhRtJTexzxsR7l/2Gsdj8JCrxG
UF4JrIFhvJOL0mJKTNlE1QTnqyrrKGO6qH54cDEMxAXP6jynj60jUwzGubPYAxhsF6MBitKo28uy
6Hnq/bY+QW6x5oW4KvDxbp0+X4OLhCcH8TuUIkogYASZyzgoEe6rcJYRtQZYT4Wmh5y34KZLWNWD
7bctmQTR9UkbGhkhNg3BMsPsS9Dgy5fbPx7K9nxWI2miJqJ8OuCEV8fJQiTyGP4pwg4DX3r2mJaE
SvEuae7J3qpaFtVuJ6QvW11Y26oJz4gZZ2MgvmOl+/S67xk4xsGtI3cr9fmURpFq1hcExOHBihAC
yvl1zwwq4uCdjNc6YraAcK8cUogmHzHyNcVtjzry1K1CVrFGvYQuMGfhiWQohZfDOLPMTtHJ5ccm
neZGs7/d+ahLUI7MYkIUhxrp0+A6UHj81xR++07NkZsFtYqSGFLzznOQJK63t/UxgcSAr6Y9Mwdm
p1Q4zDusBtn14oUOzQ/HMciqOFeiZ2xsHN4mv1iOk1kYCF2SDjkrqv6505hVziyMtxvWeGRK6bPO
imMuDKyQWKufE7xEY7OsFO0Ox/7vJEKnTKXyCw9hF2+c7YtPnCk8zlliyk23EqsejNZJ3PG/Jlpu
8HeedzR8C8OkEvznRJVmWvd4OD2F5O1ZSUp+M4MhJI1ctHBBRIB5Lj323GuWwIZe53h086BZ+QdS
84M76MCBd4qt6Sbd76vsyiNxQudQoyrW5PTBRVxNGpkL7LgP+DoJCAzRcV/sRXzSw6yUoECnQV/0
vltvIG1ApAuGaNwH4GCEU3+d3OopHaYX9iKA04XvrQjaaXR2fGJY3l6O+6shjoR7Q+o+QAQdkFhe
bUM15lJGfgpKZ6KSuLSHPkby7pP+6nuGsRjZnOlYODYNZeGi5NR6F11QQzkegtM7VbcKuvcuDP7w
MzskhhZ+FUp66tJ0/DDYnrqb1Kejox2D979GegwSCykuCS5cQy9HILgMi1A1v6NB8d0SMCPZAxNT
bVtIV6neoE9ucF4RHx+XHK1Nl7xhY/RxstnAKPOk5PdZyXxic1CjMzkxVLQGVhSPCbX6yY9ZV8KV
oL24ppblyZgrt7//+qjb6QszBBsktt1ZrUZxoM4Vf8nTw5lgzTdwKstkNq9SmYWK14UtepGnuOf8
9UJnyZmTfDOX14dqxOLI0ugFHwqY8kNv9wTksdMGDYOPSH6OVoeshrTcKjcJYh2VSqmh8Hbu8t3h
HKnt/PKG3tW3UKEUhSQXU9o76WiCxSp27APmEyoztjjs9ZwG4BFTXjFXOxNHXvntNo4XNeFDPnTM
WMT1WBj3RQ2rug0N9SyOBwykq3eYd6FQgvo8CzQ4nBwlXWXtwlZmDHZoxCr7GrokaBXKkTnr5wNU
b2pHknGfwKYk3k+ZJ+2xzvPuI9hJz4o6hGPR+XXsObOsDkcTzzF4eL5Vy1FACO4MFugvc4zcxOJF
OArUL10RR5jLTpUZuUuFGWbhERnsJBj/ZuDTaxXvOVH6u5hKYlv2T4XNisSesNkRtCgUeyejjBtH
TGmI8xEVBJKe38wuAXItFcdQWzzy0ANA+Bxi3x5yu5U/7T6U42ruJz1+yIao1miKpIGPB+OHWsnv
k6nX+Qk1NEHH490+fSs69aZ7G6Uy+5occUACsFBGmFClnBHIiTZkv4QEw+ubZDiraqxmA05r/N1/
+ACPulPVmpUHgZvXOmu/U3AXxB5LUfUwMZxhrNoou0ePg/eVkNTRdFoyWsTFjIZ6C5dmhT6Hs3mP
O7q6X6zAfBMLU7nQEvUvd/k848ygbSzDfkzzJjFJ13CAwYThtHmb2lVgiBiXMROC9oF9P8ZPa45+
rvh1Oh+riU05Jc2bnodMiCNhO1IKRnoIR6DPMVXsg8s+12SMauQyEtlUkpI8QF8qKZ6eXs8pabFL
mSvAg55u7bwopelOgQMjZ9oWJPUMm8BILNJ7rQzqMu/zIhvfTdUKwyYOJjFIixnnJcm3Vw4nqFVI
VwARjJtKO5Pttsudb3cPqL4+IP0WVIwH7Qii4hbKKgvczpbHxp4IUcn7P2O+tBYbYU2CQDI6afzh
tQBdF+8qFUmcKza6lLCGbKULy4vp3rWv6OgZ4VA5T9ulw/gE4q+Jiq0AymGJv+tBykHk//MYOaac
kLcdR4ZLcP56bEdSEmDSRphWTnlOY5CVGh/fSLW7g9G8HMMFr6wSDwJ8asc7jHulpsBxkmtk10Bk
1NiLYhHq4LYlq55Ou9r71Ld4GF+pCHtFxUtWRaoL6vx5Q/qQxAgYkYDTrEbRbvcsiKSPbfYGDZSS
+2+kClTAQa/ACznuyuqous6pSzaKqZOeF+SPVriDogEZSil7X9gs5QL+fkTc+20oT95PLsvgEeLS
GGTMXkaGL+pW0/heUHLwoUNcywCByospHxoWDM95RNruV73BuO4voG/NFpMXVvVUf0Dnc8k1bmL0
pQ3BWI6w5LPYLbQQP27KmmUwv1JXSHIvVxPTVYIJLWRbf2635HnRdz27KxtmADJ5fFeStJhKkp/z
hP04XRfZm6xo0orbNic+jA2yY/Dm8MwnVO0eyld3oP5ZHD3Bd/SlGwH+OHuoUuBCEoykyotWLmy0
XTH549J+lVP/JxjohKqoDhPgZgB1DiRon7iMVomf2wOhq3eXkCtep3Uy6fbd+tGH1UpcFVpWpKXB
r6cxfgNyyYf7XhoHuQ+nVNV6WYPs6IgY2Smr9GCsMG/AYcLprYdnqsnzB42YAJsYthAdv/Ks7juA
g+RRgetdrcC2b4J5rBbUGeh3p/Z6KWD+ctc3fHUFcSm4CFFUMBFzRTWVa434wLrwC68Cc0jHzFzg
hW1eoMQzXwEfXKTuBtYWHbIdMWCcINm6cMnIT9RqMPdB+jkGi/gPtYAXibfUkHJAYIeokqS6SrrF
vD8pwlCpP/BVjggoHSVR5T6ofJQ2BSfjSxUnb3ipNXohuvk763fpv3XMdAiUaMD3zfdof4Jkb9Of
rLAlIBYTNC8nP7NWHbbNbPIz3aAOWnmLQYOEMAn8cFccLFB0Ihhc+8W6/u5uIavfDsTzRphjNKwm
4WLNO+N1MlNW0Z4FjlteC1hZnH0JFfOqI8/XG2qWP3VfgTocfiCVFER0WqrIV3PnA9MFde4fhC8B
XH7N4+liMWRhUOZefeNhF76D+Ve6kXrRXsCtYaVwpq0ejokLrQV2GgjO6oW4EXsYOI7nE72GXf3s
uqYrlwcsTLEizWK+1Wp3zdBMnmadna8HLfyaWG3oSxOlgUdYjAGv1X1Ni+CZuwvYo7NAcpuAjMqf
/fDZaeY7fDFsyugqdrdjcd2QxDv6HzhZyZxWORFD5FI6rLkND2d9TkhdsvglYu9DDi4s2VTqDD/H
AWjCWQdwPnfPIZPXVKFLCpY5aNryjD1bIPJz9W4lVyJJTeBb0zrNoQqf4FWXHvIEWwswjkiVtTUz
c5ynJVtGlp7qKlp1JmJfGC4CXVhhQo3kW94LyHCk7DY9BoOxGDKP8v5TkFWJYLWQiY3g7LHQIAbk
uBpd+ZXCY5EZrU2IDox+cJmQeg4vZGRJnRV25jbQoGPfeE2nvp6jFh2M4+FS7NPNnao3huKn8+xw
N0jfrJEc+2Uzlhxru562O58kzxE/R/dhU41zAgLnni01J1dy3VfRyhKiLYBpdyZiu8Wcbx71mikY
GwSS49c+O/cYYLoblXh5r+H6I1Pqxce4goBXLl85Kr7HGbEimMUTqV8tceIqXZL17CQ1qscLQj9n
q6ViuUtU6b3DGlXf2ECm/QVodHmpfL3Zc7SCChZw3xYHt0kvKrLV54C2a4+z7Kuk/MwyJZuoRTcx
I/6PfZzuUN4gMEj9cklClLqUquFdzmcYyeWJrWGSO9R1uEiGbwsEvGIBLh1mkoAvomVmdvMvTvyc
Nry8kZOvjR4A0EhLhIdoIX6XwT5SNdRDx8mD0KSRZ48aBWuYW4mvQ6NyVPdq0/2JDQXVVLRNpAZ7
WSWmCLn5FZc12CqH4dCzqNOuygTRMX0rBP9/UeD2Dz+CILDd49UnaQ5tFuWSFE4aa+xuNsZk6L6Q
NbjcqndPnt4FekKMV+NjY8SDRDiCykhi3NR/Y0gd0dTqaWCPju6qt+Na3xEfdDpdK1Yw7+c68Lf8
UgMsbsuTQlxSrla8mIjt+09YODP+dQl0iPpQe7E8wN5kgWbICnBQCqhWJLG03mep6BCCveHDkLNf
vhjzUKN2eyYxh/wGvkNZum8dv7iHo9rbKXX7cgdeiJSJPyzAsqfJfS7kWYeWU7JCz1Evqlu/XX+s
NyV+POubqz1ztM3lwpO9nhhD8NyWJYJ9wAQHK9Zna2mLtFI7VKsAezNVDblUnEw1al9pJhpF23s8
tG8ZpuXXdQINlzz0ZLEl9LsBoR/mMmGohf8mdS7kMaMbFFtoJVKPgFAOhmOdA9kIN9CAgYbPWzfF
V7AuoFwcwyEn29fITeQtdbu+uMeQqtJe04pnr9XVmHgI17R9qHjEsFkljoWvwOIxNLZb9faNrUEp
AEgMzP0KxqPuimlImq70HZK0NL8A5yuUjrvo5TbXHw8UoJ18EyQJIiVZBSELfdMvZleh/W6sEGDZ
EfgLFtiCqaeUrBre5gyOu82GvSV0H5kk1PzNzIeHERxrDILSfBKHfcKIITdSOL10bX+psQq9o7TO
pjfVqAguVQDYMyzfXv4GaHVH4R/dnP0i4dj0BnUH9Ufs3La+KvVMXxdZTiz8JZSaOMSDlLIaiO5x
9YO3nvJ0T2QnbnCFyLH/Ipha5Ghb10HFwNOS5GH8aNqY2/798NMaMU/dy6cL3+eV4mxrsgjZYdph
EtO8VVIX7k2AVfA0ziudpkqeM71OhrT2LdYxaHD+TgiSwmbR1IVYa2klw3WQIHTFojlTLsk3/iFi
YkBHlUNLGf0Fl5aFa3YE7XvTc3S+K4g3CjnOA5ixayZFO2ADEG+F0A4HbWNfDKFd2dEFvUpkMnmD
qZ0Aes6XQapkxRRS5uz9+7hRIVICeq1zUv+LRtLf4SbGlCeHh9tVq8AlNSgARsc0dGwTWidW7wvB
/vpTPluJV6ltS6fNNtGfqKlxU2Lc+7Q5hmuSaCyZbjg/tAXF2xlt4sBQQoBx2O0kF7cT/+rywpSU
ThS0n65B+I9dHzYSKR3rU4X2kwUQ3Pt+IiYXX7d5+c+kE7R9lmHxwPlp/N/hMk7IxEN8WadtOwkM
09UyHGs7VhkSJ6ENOK+4Nd3xwpJnrN9cKZ7uA3xzZfhxhZ7kITcmKqHxB6Xu5rdoR2pYP6TX7iPM
hNbDH2FLj4hGLQVPDcqaGno/oDvgMc7UFMIXxRMQfUU3MrGkCkdxRXeZQYVanC04UIYkBpBT647f
7SKIC3IDLvzmuEHq02C0/pMHAuYLo2sv7NbcUl0tbS/tsOlYWPWE/po6H6zWfMP1Tq/WutrxLyL2
SAcOn+f8h2QuO6DjyGgWUUENPcVgilR8WddSZ5P/SqUGpXfdWX7211oZPOHBySGGNPnTqOo645PG
Yi1RJT6nfH+Wa7/jEqXY77tfGUOkQz3TNnH4L82cA61qrFdTD/uoNJr3p6gsSU3hA5XQ8uqUZkWq
SQoHrih1miZjPnoxPwUX59Uz/UR6D8CS07BCNdTVkswe5GdHev00b4mv68nY53GTYeAZ+IW1drPb
XALdGHdmBXyDbg0drlX4BB1wWKwQfwF+XkP8lqQJwJlniRJj4GGOIaqXXHRpNofKoIO1BZ9Fl+Ha
cmuODvDzV1HNj+eY5CMvbXlzh7Iy11YuR/5teN/mAHZmKeCsd5h/wcErMiZKn+djZdHZmD2I8fbw
424VjgfxlhP1N8+u0rCCiKLRNUUHFZlDhCxzgpEZHdMUE2Fosaildvhp+kR3bAqr01+KwrZzK/xW
jHOxQhtYEvlTqK5E8tE+W7NAe4LW2b+eX0GqTuGgenQepHRfalREhbUwtT3hHIeDYCtEKo3spWuN
DUVX934XdfxcZ8h2Uahv8KdVUppLV0v7em9KtT1FDqxbvvdVv3+bDVsSLi+GeRXtyRi+YGpph1/d
uymh8mdV9ESoT3+o0Kje2fYkbWrXBNKR3eDmdsu00D6GIOZx+bdnDZYLNcl6F6ApsMRq86yPsFSL
8t+M/AaVvusa5KM6+OTtZ4sXdREbzGQifuTu+a0KuFfGn+II7yxOnCMBoRT6QKWmMmmuRNoLIjHY
cLyNrJUYcumq/E5CUG92Mh8/m7FI1CzKXRsSPyZvDfCS06FA7v7gNT1t5mV8/6FL82NTwY0Fo7H/
Eu6dt2lU2kJKuIWTQoYK5MYAJzilGs9jqGpUg+tQnoNuPMkwNt4QS1t7yI+MZbnT8jVnLdu7TZ7Z
ZQzXYf4GExwGDuA3IJvefFHS9VVJO7uklDH2oE7mZ7WHMAHfXAn0uOBXVyAN5shXvO5PpleipmO0
xZbZJkrkH6odLfGawSOCYpbWzmyfr5l/BWusOmYM0JPuwTS0VUfp4KPrqvlhGR53lVDi1PCLGwlf
Z9J7DfCfNfr/seaOypJbEoiXdn8k8lj3EBwCjuoBXykBEnXouOLhrEDn4huVK9oVpbIiEIDLdRwY
s+rpx5p+RiL9OIrQukV6Dg8Lh/Zl7HCh1vj7VB+vLA0gZTZYrZMkkI2jCcE8f6pZju3lfOSsZoYT
7BWziyknMXYJI6A+LfsKEoVNJLbwiehduj3jzpFYrf0Zz0dqmCM36I5dqRP4evmHF0MoEK2IOH9H
xi4UehledfT3J/mrpQoOro3JbvXuqOHUoegy7wGLwxsz4khD+M3XZXlhsc6bQlZxcLPmS/ZKZA7D
ZmJiNYJA+YDm677M6WB20rHVWoook3P0Cor/bIG+EhhYJRh/U/KEU7apuWmYMho+Yv2exeSFDJeH
/ROmguFh30WfK1aLugMgjsancmISDEJv3pU8M6na0ZDbrID85WWod8lyJ7G84kQgt6ozsTqfceAj
YOca2f07pizoYJq0cTkyuEXhifTsSJgd57tf0/xNDtAKUyRMeRkNLRlGOFZGi1e6kJHzn+tQrwEx
3msBTmnAb/CL7XjEPCiAwb7dl3bhAEk6nG0szIjid+E1/avoxkmVM/dk6s+mrUeGQQtCSVqPTHPw
1hp+j6SAJJ9GPvyHs1zoMEDHH/B2QOHd7IdB29lGTvmZCLmntBPsLbjZRNGn3tNsobsWTfylW9+J
QEE4qb0/CsPY/VqeqNOAyRb3EaKyAAYsEtaEAV9YSbKgFknU0AaBCVDU4grayNewFiIBRXYgQwUr
jjKrbG/rTuR2mtw7b+F9qZv/JLS8vsjRUJ1MoT/MATrG9ypFyEidDb+7knr5Ybn+GE2rU5ZKMX3O
cxkCmOxAY9EYORya4FuLVs0W+bw6OL7FHlODOQHp1MyzhI/3x3Lgzn5tepSG2TkJNe/IDw5Rmx7l
GWavjMkdJs6koY+i3qvQ2+VZ+UdhJEHpi7GleM2qEL9MoPcuv3uk7zoUDeJwgXYhpgru7wED9+4h
JXAwLbgmU329KTJBK+qaSE6WU+aH15MQbxMh++BJXEfIgjWOSbj/+2fLp0X6I+dz8wgI0VOGqd2y
f9Hoav471a5KD/tvSeS2m60v/I9NPd6zN6lF01D5ARPbUlLCv9BeEOFY7ADOcVQzp1wF47OQXAVz
Ak4gOi9HsFWcHinkmVhBSjAP/pQ1si4xMQBL3eEaw8/pi3NPWbqa8AO8F0N0aeGy7Uph6tkaUF8W
yE7DIrVMaUtRgtdgY99QPqAvZl+CQZeVxwoZpZuHU/LswKdqtum/EKGM5nxgIbjObeRs0bZktxPh
9ZY+tnvXAffGFfX7EzUWAu6d3kFozZ5kWqxpw5cd5FWEvr6YkgOEnPdu1VVIWv185gLPX0DOnD42
13kfnibXjxBP1tWFvGmghc8K5fAX9APWYnIUnfAMaSu0BzU1WDSF6XOgXXVLtc5laGzBkWS0GeOg
qMRhq1PoG26Hvih9hKMdHGp9lJ23lVZoZmCvxYkUm6Bira1FYFF28K3R21Uv6WJUATRXWo/xDiD5
js9PftWQjSZnr7ExfOsu32rSGJlAXtFuSnfU72rt5BH5XKJKxRRAj8G1o3yhU4EI+WsKbXU826OB
RwtEl9KUH3334eHN9/LdyfGZg6TaeMHSGQlwEqxejvagZ8d1vXhzIs2jPxzmGuEmSgCbipJMN+vf
E87ndNxagRQlhu/tUzd4poqvS1fPqYGaGbw6wbUmgEbG8KuqWg3FOh73MHH0FTivD+9jAr6QQzTN
+SkM/x2MX2kjluWhcrPUNqROmm/mnRRUYoNkXwbBfryNYkig6RwH8AGym48QAdhvQRvXIT8d8ZC1
2iXoScMGIUibIuxHyjq7+tvlJVHirjNlHINRC3NshQQv1WH+fltlgidsvBdvMM074IH3qF383XBU
l1MLd3li1u2e2wAHXqmrqYBG4qjZR89VAA4ioYZIC60DDhyth11tT2yJZ+M4AFBelz0j6JJzj5rO
Hf2TNuBxCRo9cVheCJAC095eQxjYUl20/s0SMJDU62g5Io3ZOImYnqB9lV32zREYVubwQLpAojmE
kUIJ3lJJ6UIfmevnYVcqP/0+oaMJkLTQ5DyB2l1e9jZvmhvthnPsDR8C2/UitG3WhwXer3yDtk3g
3ujrCWPvk4vDOvhYZmQqCznsMTLt9xZv2WcfN7jXCT/9AeAB+jNVvA9SmE+xMCO7u0itZDzJJZzR
lTEGzrvSBOLgVX1Nva9yAbCU5UYEy5MvItnQjyy+wM5LGW1tplRHMlrH0xyLucAITxeKclmZwClV
pGwlqjyyRnv8in2hB7D83DMAu21fJUYCoIioi109jSxT0qr2DazQJF9R3CnD2f76NSbZBEv79LI2
7r9qofiOTh9syDWBZnHkF0nSHz3FKlQoAP5EG/+X+7LXp1vuO/0uxDYpLEAkSB2wj5Y6oJzLLDTW
B9o62NV43ESX85sQyfYwQG6cVOD1OYlSfeg4cmeyBLsQkLt6RpXxSi281UXF3+DIOKGrUnut+Aio
TIQ3jqctAgTgt5faVJaDwTDtDkuFHWm40NMtKOhm2N7BnTPHo6WOmsHy1zOLZx1vS99VZp5DLvc0
FxiNiGRMV+usXxcdNsgrkEN0sbyzXyxcf8HpIilqZ5aVb1zoFA/uGM+Eg/wZANVJSQT6LvEIupdA
tvzzJTm7+Zmfo8cuGo6TYg+2ZNYQtGfb8OwZgw3YxuswpnW15jSi3HZ2Vpd5wDniqSuZlYDDXaOQ
6qSy5BNdW4Ko+BpFZljsjYJ0pRNXJuYsJha8hsELwTHmj7GoEIh2RG8Odhy8XmnE/Yx96GF1IBVi
yQv49jvhaoRA5lOwZcNTbAfMBx/bIBtJYRb5nmz0oV3rVpEaNkFRDDZiGm8EQHDCupdxS6gKTSsM
wUorM43TMm7JiK15U2k5W7kJ/K1Mw8F3hFtSvxzAiXqXuvkg6AK/UAPduM4pf7/irC4MiWcQuRHW
U2elRxOXbW/AqV6vpxPbK00ShZMbrdCv4N0lxXWyNFUiFzxadDMtWYry93GKAg3WsF21Z/QJ1Us8
AGqxmVVKmVjYxWy+K3OSZtFic1SSHqHEPe0dmoQd5aDSSCpvmq1foIdzGztJmtyH0SKFpH1KInca
VKQoDAZd6QuvM9QEPg+oou/ZRQ6XiGvRfuYmFsXFoxuw94GGERT3XDBkn/t0Di3HUhp3vAWuPQMu
6WS7VVXPCKxT9ANJ/jp/ud57eJe5uFZIQdoDwa/Y4yKFHnHCNe6MGa69D08Eeht2TF5tl79qZ0Dg
gV1OAjGI4SxNgCi8MftosXoh32R6ASjxM6Xw7P6hr+XBDYWCInieK3i+ta5a4qKjvD4a+/SPMPbX
xvN9Q2Zb6V6GEsNAoIV+gAZry8Le9k073AAJVscSmgYwkeJ9NY4I09vu23CyG0JpF3+SJAp1dqr7
VGiYZxDYUr98W0v3EIrWQJPEybZtQ8xK7LBJ5HWTC6n9mJwed1pQHcGMeK+iUZnqRxRGoH8gJiZ0
mAIlMCG7kqKx8u6DhdeCDrde1miuKWwmgdwu/oHH7agCxnTZ1teAcTJQA2lQE5AxdWjCCsR4HkMC
rVGTACxUj4UunmxPYaCN+7eb0HOnb14T/tJ68oKH5l4xaVYBhNQeKWD4cduZABfAcJCxQbZb1hVP
qdqY6zzwnqd414dGkkjvCvTFdsrQ87PWXYzxJSB/SmE8BudU2HSpAbnBvqxIqgP00YnPQ3dkXgeb
5RImAjtS2KJkD9dBuuG8hJtUhydaCEHFUkjV6bqdCsKQBSE8iDaevOx/ikxLvCKNYdyeT9+XhzH3
JzDLWey9SwZ5QmlsH+KlbyGnxT+wSEhOf+pYDUyFFJSvH7zi+Uzmo90cfIArnJBIu6VP3Dw5A79t
telk9fA2anlx+/RBRZAsIX6L+66NDIkcH5yQMlb26QGV1Pd5nt+2qwj3jwL+0xj7ApoS8rdGf5MY
dinwsdhj4Smerj854UyNGDKk1jBBaXKDQOkb2SznZ6SdXjqIOpkshPOoAbutmbJQtmWm+s1AakKl
/Ku93xx3IXpGI9ax18zxmFttSYUnJtvViqBXSwVlQZwdmW1moZdiNV2sxyiF53kjyE92piQGptTi
iXFpy7ubs05yHdg2SvL97HLYIQ8XTSba5K4ngMRb9GBkihXmFAv2dbALp9rKSEDxoh1jzuUZDkeI
UYEchYB9zuQbu8ZdR1js9UgQqXfD0Pt3E0S3PqWbmPbEIsamnm0FsGME5SYkKPT/gAAF3E3rM8R5
OmLd5/uhhPRpoWYkEVCfwrOXETRW26jhw49+sxrtY9XiQwXQkH3tZv2XMiBVtWRSD2M9JYPc8B3E
Pk9JFq6q8zEj13vq7eEhlXs5ralTV6aT3EGkzFK0l3AijMaU++aTOSGNEchgMV+0MoLXU5O7oaCL
T2GUAUog9PSyVQYGKw1m/4RHYX5oKtTnDFrJstVZfmbQQay0wyyG7PJiAwUmmX6DStLfEgMLmazI
9Jgm6x09Iv6Mkn1dMPZOtlXtJtrE7IgEpIL+w1Lx1IOV/l357yHcca5r2Tah1q3jb8rwAWndVXVM
CsTJ+uub7o30+A+pG8R8bgYGorkCNOh+AHrC8HJxlvmvjbXLGtqIB0GW/m3WN4x8aOm+XTFZm0Ez
y5NitD4Lgl4JYTnxm0zzR1hiXxAmsJOO8ueuOaQDZttHfD3LNJB2V4vs2VMKymJIfheDpcPJupsK
CvzhSWTD3/LRzJiLAYS7lj2eglDmz2DDGLbyZ45cyBY1gVMDDFZ6+TpXgzTnE01XaRmfKUl2QzZb
v0RGr9l/ZzFx7eUcghz2DR8cj9uA4Prd1T+06l2EepxPrXvT6G/eT9CiDdnTYtrCZ+NN3Yax3NV5
cqBjCCiaguvCu7BUs5UwHeSUWrqhcy/1BB52gsYUcebnIV5lV3gf/tG/Wx2AzF6wnQQrHb5xQzBU
zG0rYvDEuJbQzkPrWMDE7Vp342Jw8LBV80gUDtx63CT7P9b1e+1C7QCCdjoInV9+Ivtf+IZ2Lzt9
e466LodCCgVCST5pErz2m3TOjh/Zdl55b76G7PWz0Nu3p8suR9oAz3PA8gsRvl4zxf/mftZCs7oo
97GsvYaWvVDR3XcVXThf6masP71o/AG2TiSQGkt8rSIFy8e2Hc0/UZSMPU5i8WL1UnxS9vap+Ehn
C+NwxZJqtvIke8GyZLC0oZGPgnsOEmlGCeORV1WbOezjEoanYZoH+Z+kKIr5X1U/zuJlHH1+ZAqJ
JzWShowuphsLpBwWvaHykLKRAkgUHonkMkgEjFXcTDD+03uCRPj1WA+F579rIovW6KOeFwUvSxse
rpG2xdtjtniQ5fTMgh2Mqxsk3s4mXI0ZPYBci2kcQK4r1pMb/v5DG+WemV0VPw6stbWNBbb+2Err
U13UvaY1PMFXOD7EzfXkN4kV0KXQJX9g1BAIHHdSQbQV2KDws/h6Yy0WPT5s1woznnx3nNx6pUr2
aX9nP1JcnlglU25DtY6G8epdIdG8sRtLYgKgjcy95cYzuL3RrxvALC/aY5VS7lZujEdQTQ0C2pXM
0xmJ2fp+4xx3xB7pzsCS4eDKgNLNLwBo95DeVoZ69AELgdQKOVO5f5iS1m8K7EZkAkqO2dGohnVc
YU3sa5yU0Fbl6VFb098DgY38KHpz6gafnOk/UVoS2VpRqpPybNWMy53R6IfNLAVS8I2lD5zZoHes
+wkhkhDJegmDrd5Ljxh6218hr70T5KZq1QyBS556L5JraRBbga7pA43s9x2QruEBdPuDyS9qJMwo
cjVHGHD3dkLBMBVb1ssInL4Dap7aivRtx2yDvY9gyG0+xMVUhe7M3jTYC3D42lgqlEJonYeiZT5s
HKLHcmKY/p/61ukeTSlH8S4tfgANn/xTJXLydaSOQ1R+eH3t6vZibsU6Kb96kSIOnA2OBYOqsnh7
PqGzzBCGUkV4UusEzRYSyam9E+tmofDNXBJuolx7WnP+e5N7mn8HQSqCPAthWVh4qG7rCd1mbU1Y
+LlYPxpUQXF44kCBkSk+XfCvA5g/UOsGoIIEcYh5/onCk2TVxWOe4UCBlNfakS1+7Gf8IeSlYZ3m
3sooREXtw0mAdohli97P+VlYiUlHm4cHFvJ+roKradCm9BVCch9wAoCYbjG8sX9w+7vKq/3lukmd
G1qEIqQ1UbEmEJmCRFI7IK9wb/si7fIg+mCeKuEP+I3ACmeyxvqIgAplprul94E4yW/TajsttxZj
QonpWwC8/p5jXRam4apk1BvePE/DgXB7BMT0MTsNlFBNkYRjLfvwY5uLzgqC719DtlN2hXCdIMod
ptReEr5HJrEeLXarnfwxkPf36hnQUHycmTGcd+qlXjDVv9fK74i/frTDYpJSBhRXGdukg+JUBY5P
t/hU+Gf4O4PMF3hH/o5JdQZqB2jkzE7uwvFP12W7mtHMfPLSh3HF24h1iLIKgBzQfxVEzHFhDcPL
NtkF5N5SXgvIFx/AYKERc5ON2VrGmV4abUWErHv0/np3fL/cf66vVQ5Qc3kkoYAKgK8iMcnrZPSd
923T6h/c4JxVfNVO6s1ofZ+S+o7HvSuf/FTJkp7P8ZI0tCJ4pKRCiBLdWRYCBMIA76sGRFMOE+et
kCyTeLVhjYGqXVrE5+eNTkgcJLuTtXiGkrO0tULuW3XBb5z1Ifc9ZoUSfmGfR+17h36ekWsWQDES
JXGGQpLlKUZ9vvWcTng+utXkGUTh/i9lVTSJkJ6qurTg53Z9Vzv6/yDyzYxVeOpOCePs+o6jpjwY
xrOjJRbSn5CFXDiFqtifB6yDYi5+gjemsMVjBOID/wqk+ulGeshngYUrGiOnCygTJzI/uEhCPzjN
9TDQOVIXKXOph+PltFu6I2JqrjIEolU4n8aoYvr6LYgwCu8xdwf3LwPVLYWf9MjJpMCIswYMuC67
zVuM0DAXmKO/ONPcxhOVoK+cpVbXsfujOWCAFDD7onzaNrgaGN0vB43VnwHHTnsPMA7Ff2EbvPH1
JHHhZ5fgJR21M5WIJ954/S6xJw0caaq8lRYAS70+moSyDHGLmIgTG0x1Ea2IFJIFMRxE2Pja8lIq
9dEcEI7q7KAmMBSOKhUiRURUNUMtg++dH7Ci/iph7+lhaD2p3vWLQFpsRdxDtXEBUZOHeYLXsTfi
Sf1xN10BJj5jVXwItvfplF4VmXe3FBAtq+RiEPU3zUZ/3TksoLkj9MyswzoI1rHJuiqYMeo+Lnmw
gkZlaE9KFbnQRzhXAx18r0dFewSrrpD9ECMeqyi+Ix1C7PztsezOB0EL2pHOxOD1lsgsO5418cG+
4X9TS4lf2csTBP84s0aonBU2BObj94AMAOWB8mlmhzAW+h7rf4aF2xAo97rHOcOX6upA+rYOC+G6
iiH+qUVZugm+92OuBdu9Pc84+VrUFk5NXUkqTwTLzCa5PuSIOkfxJ01Jq99MrmbBL3ViLw/gkdV/
Z/GL78u11n/EceI6PIim7LWe8GcprgwMwIYecKZzlpJ7xHSL+udZU2mImIQitSDs1wXlRAKI6PvE
dx8bc1qm57HKasSPiHE/w38ztC+jdnIYBWQvzHQGprGqWooe/qVeqjjMf79XPTUv/Gt480B6QBbx
UN5rpzBxumkvgW4yFk3tZzs6BL4id+tszEceWJKyqQX2hpkb7Iqd+f/9SS19AOkT3Gw6U8fe5+80
2hFQuadFJRsHEKumaNcwKj1yQuTYwrt38zsRtfKMhEtPwO3cFGyVQd0F7qZuq64yLBIf8CQ3sf4F
2tPJSAFx6vvcR/14j/oF86ekJZNQOiNWDTPTbMoiBnitLObRX2zl1Ht+hoypL6DnEz++CnsDQWta
54TxN9LVsO8Qt1UoRNGTmzLu7vz/Fhu9U4SvKgInvFFEA9Bs76I0K8lPXBFRZOUi6xrKL4e2kcOe
angBdIW3iFF3tFQGwvvAOU2QxZpsDi91ZvuLARX4pvLxmWDx4pLlxY9UuRl/psdkE4Yl4vFXbLOo
TcgbEGjfYuMZw2YlLqWYVwTocAl8qngGHJPLH4anXJanQBBUnYGJej+JVU17yB0oClmK/NbZ06Hc
QmiuF6X9mPpG4vfIzh0vab9gyk0OnBmN54DSxdlhFhZGp2j31N5TQA3IzaQRuT0DEjM9z5U20mf3
iBn4re6w/H9bNrGzBKO9zrQSdYM0eB1tKYILONt/gxJxnOiLyuDPxB7ZdsHEi4wAdks+3coBP0NQ
Xe1eYXqYR2g/sh8zxHpWNMPQxacQO0j2rVfREQZ9KfEHvnMlP3t5Vl9EdcPynK0lw/NZiaeBYwqz
xGfVM3nXjfNsfivAgygWcWHc1qYN/Gs73yNbzs4YBqLeyAgF66jsYszhTFPO6Zc0pyP1zTj7OToD
2AqyvR8nz0yaC/GdtLIxcw8P3tkA6rLJGNVMqzEk69Alh8dR9V8C4CN0HrDUnZ/stvOUT4PNMBKA
eLHAP111e5BoWVPbZhUZ40LEzXiM676v5khqmQFC7Siv9YbAvx3/RYP/h+YEklbAUnXqX485uTdf
U/Uq3WaP26fCL61IBqZoTfWiMxhT5hO54gTER1HyEUNntmzlsXpbjDUAFljM+3zaqyIZhZhRxlAS
JiFeFST1DKDXzWvqqM8PpwWCVcg/j+r0cUxGVbKY0/NAdmfj8FBKFjTMuPJ5mjfKpDzrhQl4/GZX
ZiJLftL8JKES5/4/DdvbhG0eSBSNSF9lSZE1tbtpKNqhGwhycv5ZDPWVfnv6xSDqwbidybD9lK9v
zMHgtzXtoNLRnxTVdF7+nUn5U6ZVUKFi3fbTxlGxjbei5/8fLCVWincBxSRG12010JcaPcbYQtwp
RA0wWOSNr0Uu5WgKHflEhmoOn7grAhKwp7pVViCHYcKbikPCAiuhDoriy/pZQfv1n1a+hXQJM/mg
DwtO7sTtYRL0xQ8toE00FoKUAdzRwAYKPcXZJHqBab2/fgj5ykfTzMI4ZeEZw04QqmMAiHT6UbLa
16E32LzPBaP/xWRLqwYYKWUflPKHlWqx4XQKtM9AUTm/PDF/o27J5iO6nD6wq2zz50Gh4IihKaKD
kiPo5mI/AZDYRygVAnnajIEW4cpCjhalxEzKClzXKI0ZSCq8haFupamWq6Bs0Y2Rdgf5EomMnl3P
mHhezXrCyWlIh9SizXdn8hKZ+oAR4IHNijSHjaTWt1HnC0g8nQ0vCYEb5rPBs/dJZH2riXw08ZIq
naL2KVS07RwGynNY6a+ACabARAYccIh//RmnUmj6+UTUhrwtBogpJbOKNSZUC3qMOdcoG+7Lzubf
iFpLNH3OkIeVO1Mr6+b+UXMFzwVJdiFQifTz+yCLD+RnA+HH8Qdrgq7TDb4RlzfWyTF+W4Tniahv
xln5jsDoFClnytvvrT7yEqU5rg2+syrNIoU6Q91MKtUaV88ddFcIBxYYYz7svwWh7SH+LllSAMi/
Ii3tbzFlCcD25p02uw6smxy/zPt3ClHlFqdR9g7eBjVvRN1AOa4Rya3HGl06hDEZkX2X5BSiW/uy
58I7YIgX45ohNDsfVyPY0EF5UB4KrtsjQlt441dWWWTuRLlHkfdelMOup9I+EJXNAKMi4Z3mhkFf
XG7guWVcKw+bAfnCBH4YXkvV8KVBmv+jdayuK/qadPlHpa2OuR/bdfiYGxjTvhSF442wlG2xXAOJ
FhpiPItjUXNRLl5cV6+6XO2qnwJEYF1LFWtEvLFiBRKxfRx7q5qymhe7bpXMttG3R9cnGtg9wtih
TZEubc1+14D9MxKlbebX6j6I44OqNOFHw8fUIGoWg6JBIZhoBQRl5/i6dw66lmUJ066tbpZqhlev
KdBJ5jVkcfap1yY/BQiKitBDIV/aHiZHcLaWyBGd+VwFn6p8E1chVPRfFCedimu6HFajk+5vmeFU
mEuo6EFRN1DXchI8HOngOpk6bnaR0XQQxkeVZ1b7L/i6deE+iSkSQrwBjzkLzT9YMKX3z/GgMqH7
JjjQhYuxCldNfWI3mvxZFFF9jwA51cjtJgBjMFR3t0IlCwjT+fD9utJlpetrqyj1okz7bJthbd1s
9u+PhAKNIv7i45bNmoiHE2mlI/pp21T8BZE9138AhBvVs4zIOsLPjbAvFWgr0Q4D3SC+GhmdLk3C
h/xdPqeRGZzJ2VnpCzOSJXKDVQpCmyAtDcIlNYgrzWIxetfkM5fOUqCj2OxHqXT7PdQhPiyJ3tKX
g1RDLjwJpwdDuhbPTEXrJuiZDLkwOItJi0cs07YpynK89Ds7Oio+KAqv3jeRXfEcB552STv3BArL
ENG3+5c4UA3RLlrhdhpuUl8zixxcowv5PuJlAfc3Ohb1qA+iEJ586ohkEryPJKkblfnh9LcyCYFX
YVwaEBfyq5AwJC1W8XoZMN5rS0oaY2YxC4aTUDeHvIeQvEWBsJFSMlrhZuLNOFRaEsXhAankTAIs
2R+ZvUlfj0RZX1gWbb+5VeDgepID6ZzLyrcFRS2AK4ssN9NI/8sRAEII8mlLxoYoATWFAnbhvl7t
7mENTcPzNrz/49XtgvJzG3b6xxSIYf4EhTrJPVliiZUYiAimyoo2NOzC3aeTR26iVjvZJoPcM8RP
M2O5mGE4lTz9VU5YTJusxNkxBQxmONWSUh8VU+PIwGdS5d1T9bVEo7dQLkDFBNzm/lVoEfm93zak
pU+k+0rHYUOVs5a5RKwdQLdrgxCAgkeDuZbYwwTjbYii1W/zzazOdp6DzckFkWv+NkiztuBm93Y5
NO7mTv3Rl+Wy1OdwmvjzUr5JRbDXDxPkiKLsMiD7FTY2oxQOxnkyAYSAM6zDxAGMnsBb/vN/FA/R
URApR/bkhfDA33nHuQf4KGB4DINiZr3pzNrqgjZIVV64VIOGPfe3lL7cAnUzGdNlbQkaLgT6dJ4c
41KYwNnTHwpi6cehMA3r026eM5B/Ud3FatloJexHPY8QuLE6wPA0z3j4AU55E/1utFy1g/T3JdVi
tAFuP1d0qlOWNtLvnCWWteAEOnACN3zi8CAbcePlJyi+BVHPm0oqptueQxefygmVrB0izt4xzQ7j
cYXNb8lPIi2Axy314Fl8hNWC3KcBJc2/RdOrpF5eEZ57ZsvKqYJNB3vSThkrKF5hJ4kUqRrh3zZ8
Xyoa7E+qvdezhJXDp+B0GK2pOx0tl7OwoqTuPu3BSE1Swun7wYNWn2GTvPJuiPr7WzMSt8S/1dxP
vJk6htcp6kb9cK5cL+I2ZKNSPFw8dASgCsCU2/TGmCwrdljKTgie/7aziQRlBnpW0H37ZBDUV3PN
vAocIWBI+/6d9dAtGeC86UVrDb+UggedpAxEaHMuQ8pmX8TbY69V56UBlqFrLBQoWg7g+w/HfeZV
SuBAzUzmDWtpN5J1r7rrr+77SQLOXM0UBCS4BJaeZr93s/V5sRBrjeFol4Q7JqlzlfI+HMQP/Xq1
XyTK4zhVU7gz3qxrAU3UQP4Fs8EBAQwmvcxvMK4MXkCZDiX00kEf/j9v7Q6YZ+hYYVmKzn/T4ZXJ
PtaX6MKFiDE8o7a0TWi9NcHRWVSl2/fzEpbGR7amnFKsR3LjQha77u5VN/36CqKv864fqtn8r5lS
9k70eJsGuHf14Tmu7TP+txnK6AvJymkBGgXRW/kS/0Vqq0sr5ArEa7otY1CGS/Dm5rC94hTtBuLn
Z865kG+vagHWogPvcv1KU+TAzRqtY5hNjvJbd6jDl0Hb79CddWbQ2RLSE6Z5Wwws7h0zuCVM28qI
JgKIV7lsk/DNWucBygurRwPRWV7hkWjRLCCFh8FOlhryxAGVKhcGYRRVhA5+mKqjqc6Bf/IQnLFq
AM+oeqRc3rHZENovgfZ2FuZpbJaoQ7+3jjE7/y4qj+ISz+zwst9fOygKOm8CbUhI6K8h+mIWAQn4
qmi8oQ8hPJOY3Z5mrhDN9FxfsxXyXwZc4DBFMsn3hdmK7fN/y+mjU7EWFjW5yBQMxq+jxoNVxhJq
M24A6jLTGs++uD/h4GTngCamjcVl25ylQFJr3kk4DYjG3GSERLXZRsmZ2dy5BR5KK2Oqgy55m5a3
VTZCfUiciiPnIv1u4ikjXAOLU/j1NwZ4I5nGNb3HwN4Bf81C5Phvn/nc67pCmcr7Jt5/cLsQ3Yo6
m2heKC3p666muIcLxbH84t7WTrrPzd71E/EqbxNJ+tbxn6Gjc32/Ija7OkJxLMK9iXLiV5x17ERu
gIjZx4QGUKmeRE1J/z4MaRKDdA3VVuiOhnm4qZHjCe+Z6nDOxVXRUh4gUeSz7wiw91uWwS7fg/Jh
weNVKkasSEuECATuYmbi+5A9lUKsDqbjTMdVboDMpQEnjHcPG20Jwx3UILjC0RjmEADYHlt6KIOy
dKgWqfZyKExtp3sgXSNkFybuQ/Q8k9fql2Ph7h27I3mGOt9r2oMIWulkEOy/5KuWUYah3wgRH/tC
BEN51YAOWR9JvzenxdXMSl87jFYYY1iiD65m2ESHANa/gh3P3zFtN9ScYf4WgUnyjYk2aiXqD3bZ
gZXZx0sLaJFQyZypiHhOIWGCA5oGb3uFtRnntW7af7thi/PNP8tXc4lAVtKt4N9fkDZObrxgGFy1
hm47S9ueMmLNSsadX52ub+gtWYTQP+SMg5VxsMAudCUBIhz3ME3NfuSqRH2iRahYzMiOZl3YfhIS
5HK1KW+eRmvUNz3ego4DQNLgWVQff+Vs986O7n7pMD7Q4uPaR8ZSPBqDVFYmp+DSbP8XXSDQjtuu
m3h9Cx0/UsmKjVfJgzLIS/iFUUOLS/ekn0MGGj/r/8BgpwKcQTakp5r1Bcd0ffsYPQyUkB8oP2/C
cnatxTjuDPurl+/k04jBdOZTjzt4yNQ4CcEDEztcYtxD2DGD+SU6e5Qmm7DlISFJv34Bz6vDLYIm
stde5DXd1jySVqyYoFmO1wEYQe+ojHhRL9BF1eBq8sDo+lCBnTCUrRAUKioTV3JzX/vuycWpL6fa
DWrBGP3IzA2ROHfCqDbMEjqZZug7uoD3HklVBEnETnROfGuBwlJexG08qKjJ6fNyms+PKLBv0f1x
t9d3YwQv97x5EalyqZ4Oab9LbV8+yF6vyEYp7/6Vx+D8QJVJIJx4kHC8XNIddim9xqkpikLoaxtS
GpiAP/MZd/ov46hiBriHj6nNGkSOcRxb3S12UUERn3D7Oq1rqp5k2Tqp8tTJAoIbgTBo1Uwel0l8
Iu5wVMxaf5hghm4DAfyYmRM6jTnP9sPiZU/OE+jTYhINoqlpyJ6G8wuBKrTuDn4EGfn0znpfAWo6
yrfj8qe2Q3mY9V7fO3GOMb80mAVozXkhzFO3fGvJeZjlcjmr4gy5lyvhk4ND9DSipHTaokYcpcEX
psAOpydbnxcLLJKaS3uZBcbZtgAP3zDCSjiImbw/GvNQcbFiaAjNALTO/QX7qq9boKUudxQmfKq+
fg5wlHL3JAWp63RdU+XjK/BXGV6cpl5ZTkwn2HeC77Ug782bVVMYQSqiVXyVjHF2cdrrWLbCGLIU
kWaacq7MhBUZmZONUmmzXcL+dMXUi8kzJkUvFIB4rlmx3wbh1SR7nQt6Wyfcl8gsSBXMp2J4SKpL
0fpOvSLQyxQWzsJ/ssBCihNJ5VsbrnyzN/qyzlsKotjgLfyGcd8gTHNExy6kBpzIU+B2QYijEQfo
0B0OrW6KCKLdu7TwD6ORCM4MR51D2bjIP4l0NTU3ndNSg/EDHMeDrIbm6rszEtPdF9l21OeEYu7i
yy2xj+SfTy/j311+oY1ibLVrKZtf8b4JPSUZL/pTmKkzDWNgsFhJXBb1b5L4A//a8e0aWsVc5lPy
VGhqdquUXnbeVz0QGjWr6nhq5qs/bMLa/P4RBQYmQoBNMHJPhPgJHGxe49ypYpC452nfkiR5AM9r
AdbELJViSqDjG3YMsttwgZXAFbQ+RHWycASAv6BAeTC6kz9l0FlBNi0He+B9hctVyOHUqmCN0PQE
8u0BOzcmjOx5eKSrE/HOZeiMlrhqyanAc1hPSaKQ/LwYG4c0zjlgvn+Ge5/adtdjGyFBdp5iM8Lu
IPMhmIxhEjTRyMeN41T75OAXv8GRraCbF7zJQmNb4Qq/BJDh88XiEIdvvIZ67XD9mxqlIyLAuKGv
UtqWo6y+OcD0TMnHy5+jv1NAHfxZM/CfmJPEZXcnPixBHRW2Hm0ysJtcALNwVGM/hMAwSd6k9OID
lu5ewCx8NAyB5lun/fxAyE77cvs66y+0Nz6y/wixD2GVvJ+cTHtqsfzCrs77HI1qGDu1tZ9QqYZn
mBBFkPzExccWLpjpuGSwdhc3a7+lZJRVrfkdmSuYkAIU7QyGEKbZR0WWhUj7K/5HiPuclizE32xL
SP93ZalbsQHkcFO0lIh1ydny3Ce3R1BoYStofwHVZcAhiWAKQlnVTWs6XWbe3Drj1ZyuFG+w0TNg
xrbkeoZqEI+07BWoo6KchUuNeLWYkRTmdZC+oNm3sEGsJXlLsWEi26K8rl/dhTQi641L7CExDVUc
PcKHi7wmXAVhx25vHCGzLIQUt1C1IvLNmolxvs7KbbNqkkydKK5vDATjDK9YPVrgjgb8d0lyC5NC
QF1lo4bUXrAyNC6DehT46mxxSdqVb3xMfcS2A0VyMZDpABBmODUlJcxE7Ed4o7L5pKgWUJkDrJd5
37Xu5bQc19wSu7oxtkb7ZmB5PHizwRthkZjxE7m8C4174oBTCbqQxjb7oNh94AL90dlG4aMvFDSS
cua0UJlVpOLtwposUYjTcfXlGDGTzygI1uywkdlDirkGE6o9J0dvuBM9qa3sKp8Dhl5gvq9ulaia
jGc+USgmDWvTJN1b8VYfdzQCQgeqmo70GjqBSi6ObxKHm+vG0oyku7O9Gt6YujFVta9HPyuMEpTc
DsN7WKgBjTBV8zaundGhTqmAHi4XAccczR6rWQSng//7q5LQbEV3otV0HudXFK6V6MtC1RNlkEfR
bjBpj51QSV40ZAWodI9v7X8BLmFQxy0D6/oviIZGCyc+spiKIyUIO8TgSGo8DWSrdfUUftSGZ8XD
ksxq/iGFidVqsfdpjKhrklNZPbojBtE8qyTY4dNnk5vYSOKpqrHcYP/R8zdI0/4GlPMi+H5JAg8A
+j0+basXY22DSsSAymry5LlfwDcm/o8zlNFZNDY8JVAx9UZsPNv8oecHgsw2NioxlYsoP8O7uR/c
Bxiq0Aj9UlvFaI/qywEmKd61GRHp7xDTtMXMrpAl8tm/Dv6OAb7HdtIUdv3EPaaKdkcC+iOnBq7B
uCcjRMr3dHJn/gtry/AqMCWJqQqDmZ6y55r8Mh+8oOp2uImqysRqDZ7/bZlfKpeFRWnk0/Vx54va
T7GCHxRWbum7/3z8q/Vanr1pn3u+YY7Ks5NONGF60c9psVnrgYufwKis6OEP6pBCNLon5K5AuY17
Wfub8D6KOiFk853lI3NguGv6RcPEhWm6ybgz76+Y9B5fd50rFGLAd0AEEIH6Wpf4HVx3ViLusQBx
3J3+XGRY0GPPOS6cZv37QZzlfcwE6AFUJEI/664fk/JrSLhmCMtnmJ/IzF9Z3XGXdR4p37EQ+m2l
90X++cYq8i4isPpU09gvlcvPFfx2kHNyBhseqLtQO+rod5uokcVWAFGNoA5IwfTBRI6AdJ/nEX81
eSby1hydNCHmitX/AmNhg8bXfr3r0YBqQcNuy+yp410THdhNC/bdsds+VGuECj36mCntdOTXmfV7
DxoQP+v3BYXRRG8MRjMLuKduLGvigBq8H/EpKrzIr8PMiuwC84tinHGElbK/RWVcgpGY07gg1o/S
FC2EZnbQEbR7k4bxe8E99DAOTG3xDpRkcm0z49643L9q1w410tGEQmuSJcbUM58NUMTggDDGm7EW
i/gfaabX6P0vdOD58V0cB263pjJ7OIqkH963K8Da6yuOTuGRMzqx1ka25mzKUgn422YoFBJujumS
0kZkbRrDNhOwuZFr0xrRioDu7xVMjJvG31581op7rgMnzGPfuuVlsJcwUYVGafwxH9kQ591J/ZWK
fV3o7dLtDdmBMZsvuOmPuaVmd6v9mm41UTEuvWTUi1yN8LOXWdTy30rsnCeBV3fRCXSTde0pJKRQ
scXHnej/o9lYimHzyyXm2usko/LZAfQ5uEzFyhm2DaMtkaRau6lU7SkMyZ0tqDVt/nTFSkAv/6c4
bDdAghraSTPWdCLGWAgZERo0m2m58vfQfSRY4v36NnpQJ+/5dru2v0dRauBhEP5WEKCCMak1FuoP
mxWTyucmF7ApUaQxuIBYK6ssTi9V3khn/WMQPzgNDddN7S1UiDcpLCIlN8zxi+mm9Pu+6ByuyexF
hdG8dAoZR/oWd5azYxaiQltL5bct5hjD93gTMw3oDGvV8UuXkYTv+IzuA6hXeMJ4/Dj9m3WscgrS
dpaDnZXaqIYkn3S+aTY4U13fK6xpH2wvIr7frEoWHT5XfqXz3q9wLpoFV9ilPkC0j6ta+dGoAwDm
E8fGaakOevV7sr0/b2IYxA4lKh2lFkKREdnX+yb6WgANpeC4RPtTbbBkMRtjz/TrivxKOkhZJJCJ
4jBqhhU4oI77tR6AT05ku5HEPnPAGY1GOVCheAibJLqmHQDevZkNjFeHU434qVLDiln6d2st1PFx
WIJ34gORKXhnm3dh0nW7IgzCMX+7rhECft5VnosSg4IxOr5VW94Uf66fLqzsNHJ4wlDKRruRwG1Q
CO2AzNlfKVqXat34rqbW8qqbc9z8JiByG1wLiiFqhzcixHNP7Cmft6QNVwMW5ab+7YxmgecLpw3A
GydQg1rOSVB45xy7MLSt0BF+Ok0DnqRhA2RgvXcv4W/m71lKPN4lh0KTJ50bZJ1lXA9kqSYXLZA4
6CrQEmfp/Fb5NLv0BAD8dunLC64+LaJcozQxSSryIyqCOuUDqaqwTQaSTUgqXSmqItRQ0hp8Y9cw
2gpe8jySNAXR5ckobhZTI9mcMXIrIp1YdbenqhFhwO3XgXm1D7BeMKcWE+slrM9xI5+sDbyIvMEB
t90aX5c2Cj9tuWxMRVifqIf7kYSwV5Edx7vw8Q0sVf88UjscHE0ViOeHYAGQ4ioOwaeHtIPZAftv
XDodh60hIW4FG46gZeb7NckoXICa9F9xjIRVdFWU+bRjy6khX8BT/oINMmznkmPYIhyLNheYfFIG
fdFSmCmnUMD8yZ3aYg0/sR7eZO8QgBL+/IHrj0c0WfBLqPC5qWiCemdJNSK155uIhATT0Igwt/3V
CrXh8wza26p4YdPo+pmfW7Eg5lmt5FfWuX6ZBq+r52+KfyhUU63Ff86KwPCoGMWcprRZJTTi5Nv9
va0zRHWf4f1XQlu3WyJHNWwDLlrH90jxjafQtiFPDD5kW2cnG7yGiYQkEEP7W6wr/tXUa0i1X8zZ
QUzKsBMgDHCYU6pf4mQ7b8cyVAI+SqIwr5w794opfGAPFOrWadb4ztitx9vJHL9FjKhFfHhp4JSk
9YCOvjql7PBFPQEJyqHWqh8i1YRkbgnFdsVhagFMBBZQhA71y+ID2ev15v1szpk5kOR9LjeCb+w4
dixWr8OhDM7tj144wBnrTLOxyioONet+e2/yKXx+8sXaQ4HY6z+hiW0QlN+k425mTlF9CYwCaSTo
UDgJETpBmv1McrK/YWVvlgVfZqJ96jSN2aMuF/0FLmETOjyZXXmzEnOnlkIpXp8aV0oLcr9Hh8f9
04EN5SV+z41zc6ILunHOmNQaMLitwATLmoPFbolhltCjX5oFPlmCznGmPvdvl/YxfunMqk6ZgQXu
P9AC4fYs7XpbYpBHYZClWv2sq817htNJVaLIiOlbfcmBuT6NI/amxkbZ7dXHPEuRYuDd5Y2Af6cx
RkeZlNIAAo/2y9xXXuW0qJ7doicvh3tqIlegrbexpfo4Y6UM8rISh2lS4ibp00OFsqxJ0B3ksrXg
u0DGbLsa0l/wFmRyCet3yt7wmWWFKvr1GmjNwiqkbYd3HWllDyLO0ou5PPDAzV/CvBhzcW2fzZbO
Ddetr4MBLtC3CkCFOlHCGoAs2PfUE7eiduhxj5eIi/H0uKAIw67fvBO2asC5RH7TeZHzw3QD5EDv
+gp5vSFPqZHhDAqfJaA9YfFumv8rOwHuiqGL1VjNTa+/dAtjslxTVT4lYiUl5C2AZOXY/pjpkPe9
An0cx01VdO3ZSRrXkjgRBbnh2JA0qdZvdOgTIAbbPs28Lgp26hpFKz6RNQUyj4WqFXtW52oMxqix
hHEFqjefIIzhd48bGVrNdIbCxxPsNmgF6LOSzYkqi4EFjsXc/dYlE5Lhc26k3vKic0OlQ6nYPKmy
mLeDK7iD40CwgXEa5AjM0cSODMagm6+aZAqlsFO1GkOfXhwuaizgIz3z68ASdPkdeyfXtCWRJhiH
fNQVZdr32BnwR5/FJpiuhurFkPK+QRJzgqi2K3l3T158oRJmV1Yxfq93ykqPd8MPDcBshV2rO+7s
15mHXe78bnFC6KJJ7LNTtR6nWm3sOHMSvJrqEn1fS3848lvn2+v2NoFhAV6YisKcbYZXSPfA22lO
ZIruOy9+eoZqZgxKIO0QRXPQsSOmQAORJYTFyPZ+d+oJTI0/14845j9E8V88nU7vnot3LemxAYKn
cSLGm/gv0Ife5V0lVl1800XZKk8O18Qy/zQ6PcO76/qhzvyI5Xlq29DV59d6qB3IEpCwKZ/VrIF8
7hK7JRtz0Xs9XGtsMqtF5A/gSM2pHlJmmnekDjDAn0OVMhl7ZGrJsVdmUxQMj9JeumbcvNTlvWxu
yS9Ws+fWZV7TwPfUtP/xM8SGV94YvWNVdhF1gQkckubL941J+3uhcR/Ih1rIrNldQqWnCzRxPhtQ
YFH7elHSnDmxquLwbSHSipm3fR7Fe/qhCARiQew2o+czpkv5vRDr9x9Pa1yxxhQ/zjJsuU9Z/BWm
7dg292KGJaI4CFqF8jgskzb8sgSBymKA5m9AzySFH1fbsFdDyXe1py6IbBeX047tILIqgDaY8asM
G4APaDO7EUVAZeMukobrBmQLqaiH0sdsGihE2V/mkTDVYyuXGkoj3qcYaiiulQCVYe1MyZkwk8Fs
MOxmjH5V+tAgkyof9gmP9wnBiX5GbFblsOLxVLhxV3liJfgXvuv8tUfucwxG9YmnamdGHc6BRNLO
wLCZY1GTaSnUJWMYbIkDR6JTbmHNJpZG03k311x6s1//89WuAtIlic93Vout0NsKAvcZFJ6eO6U9
Vy94vQFWuJ3CBEMWS+WNWmOgfAovjIhzbYncobCn/NM1ipyX/sjFui86UKWInvWX9KlUn3tLG6OC
lme4DbO4oMcduXo4wE+knERGlpswkX2JZpYAQhGIPp4lYG+ptcK4UHHn9nOwVnH8Vk9wvIJldkRA
w3KoEFZssgmZm0M2tObXPLmgyoRV2ov0n2jKTkBn2/JcWCuPHBZKGvSinCLVMUnyZl64Y9fbJN9e
Sv+zEyYGstHlsz2eqVnio+6twAOiHhlQCgyAickFDJ0M+whCtf7tmS3yUAyX6BaLbu2yfFWPT/B4
ET3qqDXkTiUbiJWmgF1Ztl4MB2P3rCcVaBVWwxCihPT+njrC3MMuIVdh4md1Q1Rqr695fwUtgFGq
7uF+315QQx18vZpF6HAcrI6c3KpyZx9Ad57AobHoivnDayFG3A3RBPSgltnd9SzbuTdqSYaAfYr+
Yv9HInGtxebPeFnBJuZWgz6e/X9M9XtNQV5KbwjLVoO+tk+ouGNgJrzef3S66rGqKm5odNfc62f1
ok8JUV7Dke9oV02co+5iHrmftzild4c3UW+Sl6/ArfcXDiAF
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
