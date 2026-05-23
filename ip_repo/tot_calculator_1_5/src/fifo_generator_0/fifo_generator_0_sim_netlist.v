// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat May 23 19:58:50 2026
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
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
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
