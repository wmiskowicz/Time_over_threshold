`timescale 1ns / 1ps

module bram_to_tot_calc_tb;

import axi_vip_pkg::*;
import axi_pkg::*;


// ----- AXI BFM -----
axi_master_t axi_master_calc = new();
axi_master_t axi_master_bram = new();

// ----- Local parameters -----
localparam CLK_PERIOD = 10ns; // 100MHz
parameter SAMPLE_NUM_PER_CYCLE = 24;
parameter WIDTH = 32;
parameter FRAC = 8;
parameter ID = 32'h0000_CA7C;

// ----- Local variables -----
logic clk;
logic rst;
wire start;
wire [31:0] bram_addr;
wire bram_arvalid;
logic [31:0] bram_rdata;
logic bram_rvalid;
logic bram_rready;
logic bram_arready;

// ----- Samples stream -----
wire [287:0] samples;
wire samples_valid;
wire samples_ready;

// ----- AXI signals -----

// ----- BRAM AXI -----
wire [BFM_AXI_VIP_ADDR_WIDTH-1 : 0] s00_axi_awaddr;
wire [2 : 0] s00_axi_awprot;
wire s00_axi_awvalid;
wire s00_axi_awready;
wire [BFM_AXI_VIP_DATA_WIDTH-1 : 0] s00_axi_wdata;
wire [(BFM_AXI_VIP_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb;
wire s00_axi_wvalid;
wire s00_axi_wready;
wire [1 : 0] s00_axi_bresp;
wire s00_axi_bvalid;
wire s00_axi_bready;
wire [BFM_AXI_VIP_ADDR_WIDTH-1 : 0] s00_axi_araddr;
wire [2 : 0] s00_axi_arprot;
wire s00_axi_arvalid;
wire s00_axi_arready;
wire [BFM_AXI_VIP_DATA_WIDTH-1 : 0] s00_axi_rdata;
wire [1 : 0] s00_axi_rresp;
wire s00_axi_rvalid;
wire s00_axi_rready;

// ----- TOT_CALC AXI -----
wire [BFM_AXI_VIP_ADDR_WIDTH-1 : 0] s01_axi_awaddr;
wire [2 : 0] s01_axi_awprot;
wire s01_axi_awvalid;
wire s01_axi_awready;
wire [BFM_AXI_VIP_DATA_WIDTH-1 : 0] s01_axi_wdata;
wire [(BFM_AXI_VIP_DATA_WIDTH/8)-1 : 0] s01_axi_wstrb;
wire s01_axi_wvalid;
wire s01_axi_wready;
wire [1 : 0] s01_axi_bresp;
wire s01_axi_bvalid;
wire s01_axi_bready;
wire [BFM_AXI_VIP_ADDR_WIDTH-1 : 0] s01_axi_araddr;
wire [2 : 0] s01_axi_arprot;
wire s01_axi_arvalid;
wire s01_axi_arready;
wire [BFM_AXI_VIP_DATA_WIDTH-1 : 0] s01_axi_rdata;
wire [1 : 0] s01_axi_rresp;
wire s01_axi_rvalid;
wire s01_axi_rready;

initial begin
  clk = 1'b0;
  forever begin
    #(CLK_PERIOD/2) clk = ~clk;
  end
end


bram_controller_ip_v1_0 #(
  .C_S00_AXI_DATA_WIDTH(BFM_AXI_VIP_DATA_WIDTH),
  .C_S00_AXI_ADDR_WIDTH(BFM_AXI_VIP_ADDR_WIDTH)
)
u_bram_controller_ip_v1_0 (
  // Users to add ports here
  .bram_addr      (bram_addr),
  .bram_arready   (bram_arready),
  .bram_arvalid   (bram_arvalid),
  .bram_rdata     (bram_rdata),
  .bram_rready    (bram_rready),
  .bram_rvalid    (bram_rvalid),
  // Ports of Axi Slave Bus Interface S00_AXI
  .s00_axi_aclk   (clk),
  .s00_axi_araddr (s00_axi_araddr),
  .s00_axi_aresetn(~rst),
  .s00_axi_arprot (s00_axi_arprot),
  .s00_axi_arready(s00_axi_arready),
  .s00_axi_arvalid(s00_axi_arvalid),
  .s00_axi_awaddr (s00_axi_awaddr),
  .s00_axi_awprot (s00_axi_awprot),
  .s00_axi_awready(s00_axi_awready),
  .s00_axi_awvalid(s00_axi_awvalid),
  .s00_axi_bready (s00_axi_bready),
  .s00_axi_bresp  (s00_axi_bresp),
  .s00_axi_bvalid (s00_axi_bvalid),
  .s00_axi_rdata  (s00_axi_rdata),
  .s00_axi_rready (s00_axi_rready),
  .s00_axi_rresp  (s00_axi_rresp),
  .s00_axi_rvalid (s00_axi_rvalid),
  .s00_axi_wdata  (s00_axi_wdata),
  .s00_axi_wready (s00_axi_wready),
  .s00_axi_wstrb  (s00_axi_wstrb),
  .s00_axi_wvalid (s00_axi_wvalid),
  // 2. Downstream Streaming Packet Ports
  .samples        (samples),
  .samples_ready  (samples_ready),
  .samples_valid  (samples_valid)
);

tot_calculator_v1_5 #(
  .SAMPLE_NUM_PER_CYCLE(SAMPLE_NUM_PER_CYCLE),
  .WIDTH               (WIDTH),
  .FRAC                (FRAC),
  .ID                  (ID),
  .C_S00_AXI_DATA_WIDTH(BFM_AXI_VIP_DATA_WIDTH),
  .C_S00_AXI_ADDR_WIDTH(BFM_AXI_VIP_ADDR_WIDTH)
)
u_tot_calculator_v1_5 (
  .s00_axi_aclk   (clk),
  .s00_axi_aresetn(~rst),
  .s00_axi_araddr (s01_axi_araddr),
  .s00_axi_arprot (s01_axi_arprot),
  .s00_axi_arready(s01_axi_arready),
  .s00_axi_arvalid(s01_axi_arvalid),
  .s00_axi_awaddr (s01_axi_awaddr),
  .s00_axi_awprot (s01_axi_awprot),
  .s00_axi_awready(s01_axi_awready),
  .s00_axi_awvalid(s01_axi_awvalid),
  .s00_axi_bready (s01_axi_bready),
  .s00_axi_bresp  (s01_axi_bresp),
  .s00_axi_bvalid (s01_axi_bvalid),
  .s00_axi_rdata  (s01_axi_rdata),
  .s00_axi_rready (s01_axi_rready),
  .s00_axi_rresp  (s01_axi_rresp),
  .s00_axi_rvalid (s01_axi_rvalid),
  .s00_axi_wdata  (s01_axi_wdata),
  .s00_axi_wready (s01_axi_wready),
  .s00_axi_wstrb  (s01_axi_wstrb),
  .s00_axi_wvalid (s01_axi_wvalid),
  // ToT calculator ports
  .sample         (samples),
  .sample_ready   (samples_ready),
  .sample_valid   (samples_valid)
);


axi_vip_v1_1_14_top #(
  .C_AXI_PROTOCOL       (BFM_AXI_VIP_PROTOCOL),
  .C_AXI_INTERFACE_MODE (BFM_AXI_VIP_INTERFACE_MODE),
  .C_AXI_ADDR_WIDTH     (BFM_AXI_VIP_ADDR_WIDTH),
  .C_AXI_WDATA_WIDTH    (BFM_AXI_VIP_DATA_WIDTH),
  .C_AXI_RDATA_WIDTH    (BFM_AXI_VIP_DATA_WIDTH),
  .C_AXI_WID_WIDTH      (BFM_AXI_VIP_ID_WIDTH),
  .C_AXI_RID_WIDTH      (BFM_AXI_VIP_ID_WIDTH),
  .C_AXI_AWUSER_WIDTH   (BFM_AXI_VIP_AWUSER_WIDTH),
  .C_AXI_ARUSER_WIDTH   (BFM_AXI_VIP_ARUSER_WIDTH),
  .C_AXI_WUSER_WIDTH    (BFM_AXI_VIP_WUSER_WIDTH),
  .C_AXI_RUSER_WIDTH    (BFM_AXI_VIP_RUSER_WIDTH),
  .C_AXI_BUSER_WIDTH    (BFM_AXI_VIP_BUSER_WIDTH),
  .C_AXI_SUPPORTS_NARROW(BFM_AXI_VIP_SUPPORTS_NARROW),
  .C_AXI_HAS_BURST      (BFM_AXI_VIP_HAS_BURST),
  .C_AXI_HAS_LOCK       (BFM_AXI_VIP_HAS_LOCK),
  .C_AXI_HAS_CACHE      (BFM_AXI_VIP_HAS_CACHE),
  .C_AXI_HAS_REGION     (BFM_AXI_VIP_HAS_REGION),
  .C_AXI_HAS_PROT       (BFM_AXI_VIP_HAS_PROT),
  .C_AXI_HAS_QOS        (BFM_AXI_VIP_HAS_QOS),
  .C_AXI_HAS_WSTRB      (BFM_AXI_VIP_HAS_WSTRB),
  .C_AXI_HAS_BRESP      (BFM_AXI_VIP_HAS_BRESP),
  .C_AXI_HAS_RRESP      (BFM_AXI_VIP_HAS_RRESP),
  .C_AXI_HAS_ARESETN    (BFM_AXI_VIP_HAS_ARESETN)
) BRAM_AXI (
  .aclk          (clk),
  .aclken        (1'b1),
  .aresetn       (~rst),
  .s_axi_awid    (),
  .s_axi_awaddr  (),
  .s_axi_awlen   (),
  .s_axi_awsize  (),
  .s_axi_awburst (),
  .s_axi_awlock  (),
  .s_axi_awcache (),
  .s_axi_awprot  (),
  .s_axi_awregion(),
  .s_axi_awqos   (),
  .s_axi_awuser  (),
  .s_axi_awvalid (),
  .s_axi_awready (),
  .s_axi_wid     (),
  .s_axi_wdata   (),
  .s_axi_wstrb   (),
  .s_axi_wlast   (),
  .s_axi_wuser   (),
  .s_axi_wvalid  (),
  .s_axi_wready  (),
  .s_axi_bid     (),
  .s_axi_bresp   (),
  .s_axi_buser   (),
  .s_axi_bvalid  (),
  .s_axi_bready  (),
  .s_axi_arid    (),
  .s_axi_araddr  (),
  .s_axi_arlen   (),
  .s_axi_arsize  (),
  .s_axi_arburst (),
  .s_axi_arlock  (),
  .s_axi_arcache (),
  .s_axi_arprot  (),
  .s_axi_arregion(),
  .s_axi_arqos   (),
  .s_axi_aruser  (),
  .s_axi_arvalid (),
  .s_axi_arready (),
  .s_axi_rid     (),
  .s_axi_rdata   (),
  .s_axi_rresp   (),
  .s_axi_rlast   (),
  .s_axi_ruser   (),
  .s_axi_rvalid  (),
  .s_axi_rready  (),

  // Master side
  .m_axi_awid    (),
  .m_axi_awaddr  (s00_axi_awaddr),
  .m_axi_awlen   (),
  .m_axi_awsize  (),
  .m_axi_awburst (),
  .m_axi_awlock  (),
  .m_axi_awcache (),
  .m_axi_awprot  (s00_axi_awprot),
  .m_axi_awregion(),
  .m_axi_awqos   (),
  .m_axi_awuser  (),
  .m_axi_awvalid (s00_axi_awvalid),
  .m_axi_awready (s00_axi_awready),
  .m_axi_wid     (),
  .m_axi_wdata   (s00_axi_wdata),
  .m_axi_wstrb   (s00_axi_wstrb),
  .m_axi_wlast   (),
  .m_axi_wuser   (),
  .m_axi_wvalid  (s00_axi_wvalid),
  .m_axi_wready  (s00_axi_wready),
  .m_axi_bid     (),
  .m_axi_bresp   (s00_axi_bresp),
  .m_axi_buser   (1'b0),
  .m_axi_bvalid  (s00_axi_bvalid),
  .m_axi_bready  (s00_axi_bready),
  .m_axi_arid    (),
  .m_axi_araddr  (s00_axi_araddr),
  .m_axi_arlen   (),
  .m_axi_arsize  (),
  .m_axi_arburst (),
  .m_axi_arlock  (),
  .m_axi_arcache (),
  .m_axi_arprot  (s00_axi_arprot),
  .m_axi_arregion(),
  .m_axi_arqos   (),
  .m_axi_aruser  (),
  .m_axi_arvalid (s00_axi_arvalid),
  .m_axi_arready (s00_axi_arready),
  .m_axi_rid     (),
  .m_axi_rdata   (s00_axi_rdata),
  .m_axi_rresp   (s00_axi_rresp),
  .m_axi_rlast   (1'b0),
  .m_axi_ruser   (1'b0),
  .m_axi_rvalid  (s00_axi_rvalid),
  .m_axi_rready  (s00_axi_rready)
);

axi_vip_v1_1_14_top #(
  .C_AXI_PROTOCOL       (BFM_AXI_VIP_PROTOCOL),
  .C_AXI_INTERFACE_MODE (BFM_AXI_VIP_INTERFACE_MODE),
  .C_AXI_ADDR_WIDTH     (BFM_AXI_VIP_ADDR_WIDTH),
  .C_AXI_WDATA_WIDTH    (BFM_AXI_VIP_DATA_WIDTH),
  .C_AXI_RDATA_WIDTH    (BFM_AXI_VIP_DATA_WIDTH),
  .C_AXI_WID_WIDTH      (BFM_AXI_VIP_ID_WIDTH),
  .C_AXI_RID_WIDTH      (BFM_AXI_VIP_ID_WIDTH),
  .C_AXI_AWUSER_WIDTH   (BFM_AXI_VIP_AWUSER_WIDTH),
  .C_AXI_ARUSER_WIDTH   (BFM_AXI_VIP_ARUSER_WIDTH),
  .C_AXI_WUSER_WIDTH    (BFM_AXI_VIP_WUSER_WIDTH),
  .C_AXI_RUSER_WIDTH    (BFM_AXI_VIP_RUSER_WIDTH),
  .C_AXI_BUSER_WIDTH    (BFM_AXI_VIP_BUSER_WIDTH),
  .C_AXI_SUPPORTS_NARROW(BFM_AXI_VIP_SUPPORTS_NARROW),
  .C_AXI_HAS_BURST      (BFM_AXI_VIP_HAS_BURST),
  .C_AXI_HAS_LOCK       (BFM_AXI_VIP_HAS_LOCK),
  .C_AXI_HAS_CACHE      (BFM_AXI_VIP_HAS_CACHE),
  .C_AXI_HAS_REGION     (BFM_AXI_VIP_HAS_REGION),
  .C_AXI_HAS_PROT       (BFM_AXI_VIP_HAS_PROT),
  .C_AXI_HAS_QOS        (BFM_AXI_VIP_HAS_QOS),
  .C_AXI_HAS_WSTRB      (BFM_AXI_VIP_HAS_WSTRB),
  .C_AXI_HAS_BRESP      (BFM_AXI_VIP_HAS_BRESP),
  .C_AXI_HAS_RRESP      (BFM_AXI_VIP_HAS_RRESP),
  .C_AXI_HAS_ARESETN    (BFM_AXI_VIP_HAS_ARESETN)
) TOT_CALC_AXI (
  .aclk          (clk),
  .aclken        (1'b1),
  .aresetn       (~rst),
  .s_axi_awid    (),
  .s_axi_awaddr  (),
  .s_axi_awlen   (),
  .s_axi_awsize  (),
  .s_axi_awburst (),
  .s_axi_awlock  (),
  .s_axi_awcache (),
  .s_axi_awprot  (),
  .s_axi_awregion(),
  .s_axi_awqos   (),
  .s_axi_awuser  (),
  .s_axi_awvalid (),
  .s_axi_awready (),
  .s_axi_wid     (),
  .s_axi_wdata   (),
  .s_axi_wstrb   (),
  .s_axi_wlast   (),
  .s_axi_wuser   (),
  .s_axi_wvalid  (),
  .s_axi_wready  (),
  .s_axi_bid     (),
  .s_axi_bresp   (),
  .s_axi_buser   (),
  .s_axi_bvalid  (),
  .s_axi_bready  (),
  .s_axi_arid    (),
  .s_axi_araddr  (),
  .s_axi_arlen   (),
  .s_axi_arsize  (),
  .s_axi_arburst (),
  .s_axi_arlock  (),
  .s_axi_arcache (),
  .s_axi_arprot  (),
  .s_axi_arregion(),
  .s_axi_arqos   (),
  .s_axi_aruser  (),
  .s_axi_arvalid (),
  .s_axi_arready (),
  .s_axi_rid     (),
  .s_axi_rdata   (),
  .s_axi_rresp   (),
  .s_axi_rlast   (),
  .s_axi_ruser   (),
  .s_axi_rvalid  (),
  .s_axi_rready  (),

  // Master side
  .m_axi_awid    (),
  .m_axi_awaddr  (s01_axi_awaddr),
  .m_axi_awlen   (),
  .m_axi_awsize  (),
  .m_axi_awburst (),
  .m_axi_awlock  (),
  .m_axi_awcache (),
  .m_axi_awprot  (s01_axi_awprot),
  .m_axi_awregion(),
  .m_axi_awqos   (),
  .m_axi_awuser  (),
  .m_axi_awvalid (s01_axi_awvalid),
  .m_axi_awready (s01_axi_awready),
  .m_axi_wid     (),
  .m_axi_wdata   (s01_axi_wdata),
  .m_axi_wstrb   (s01_axi_wstrb),
  .m_axi_wlast   (),
  .m_axi_wuser   (),
  .m_axi_wvalid  (s01_axi_wvalid),
  .m_axi_wready  (s01_axi_wready),
  .m_axi_bid     (),
  .m_axi_bresp   (s01_axi_bresp),
  .m_axi_buser   (1'b0),
  .m_axi_bvalid  (s01_axi_bvalid),
  .m_axi_bready  (s01_axi_bready),
  .m_axi_arid    (),
  .m_axi_araddr  (s01_axi_araddr),
  .m_axi_arlen   (),
  .m_axi_arsize  (),
  .m_axi_arburst (),
  .m_axi_arlock  (),
  .m_axi_arcache (),
  .m_axi_arprot  (s01_axi_arprot),
  .m_axi_arregion(),
  .m_axi_arqos   (),
  .m_axi_aruser  (),
  .m_axi_arvalid (s01_axi_arvalid),
  .m_axi_arready (s01_axi_arready),
  .m_axi_rid     (),
  .m_axi_rdata   (s01_axi_rdata),
  .m_axi_rresp   (s01_axi_rresp),
  .m_axi_rlast   (1'b0),
  .m_axi_ruser   (1'b0),
  .m_axi_rvalid  (s01_axi_rvalid),
  .m_axi_rready  (s01_axi_rready)
);



// ========================================================================
// 32-bit BRAM Read Logic (Accessing Pairs via Address)
// ========================================================================
// --- Complete 48-Sample Pulse Profile ---
localparam logic [11:0] PULSE_FRAME_1 [0:23] = '{
    12'd0,    12'd10,   12'd30,   12'd70,   12'd130,  12'd220,
    12'd350,  12'd530,  12'd770,  12'd1070, 12'd1430, 12'd1840,
    12'd2300, 12'd2780, 12'd3240, 12'd3640, 12'd3900, 12'd4040,
    12'd4080, 12'd4090, 12'd4092, 12'd4093, 12'd4094, 12'd4095
};

localparam logic [11:0] PULSE_FRAME_2 [0:23] = '{
    12'd4095, 12'd3900, 12'd3500, 12'd3050, 12'd2650, 12'd2280,
    12'd1950, 12'd1660, 12'd1410, 12'd1190, 12'd1000, 12'd840,
    12'd700,  12'd580,  12'd480,  12'd390,  12'd310,  12'd250,
    12'd190,  12'd140,  12'd100,  12'd60,   12'd20,   12'd0
};

always_ff @(posedge clk) begin
    if (rst) begin
        bram_rdata  <= 32'd0;
        bram_rvalid <= 1'b0;
    end
    else begin
        // Handshake clear
        if (bram_rready) begin
            bram_rvalid <= 1'b0;
        end

        if (bram_arvalid) begin
            bram_rvalid <= 1'b1;

            case (bram_addr)
                // --------------------------------------------------------
                // FRAME 1 ADDRESSES (Rising Edge: 1 Sample Per 32-bit word)
                // --------------------------------------------------------
                32'hA001_2000: bram_rdata <= {20'd0, PULSE_FRAME_1[0]};
                32'hA001_2004: bram_rdata <= {20'd0, PULSE_FRAME_1[1]};
                32'hA001_2008: bram_rdata <= {20'd0, PULSE_FRAME_1[2]};
                32'hA001_200C: bram_rdata <= {20'd0, PULSE_FRAME_1[3]};
                32'hA001_2010: bram_rdata <= {20'd0, PULSE_FRAME_1[4]};
                32'hA001_2014: bram_rdata <= {20'd0, PULSE_FRAME_1[5]};
                32'hA001_2018: bram_rdata <= {20'd0, PULSE_FRAME_1[6]};
                32'hA001_201C: bram_rdata <= {20'd0, PULSE_FRAME_1[7]};
                32'hA001_2020: bram_rdata <= {20'd0, PULSE_FRAME_1[8]};
                32'hA001_2024: bram_rdata <= {20'd0, PULSE_FRAME_1[9]};
                32'hA001_2028: bram_rdata <= {20'd0, PULSE_FRAME_1[10]};
                32'hA001_202C: bram_rdata <= {20'd0, PULSE_FRAME_1[11]};
                32'hA001_2030: bram_rdata <= {20'd0, PULSE_FRAME_1[12]};
                32'hA001_2034: bram_rdata <= {20'd0, PULSE_FRAME_1[13]};
                32'hA001_2038: bram_rdata <= {20'd0, PULSE_FRAME_1[14]};
                32'hA001_203C: bram_rdata <= {20'd0, PULSE_FRAME_1[15]};
                32'hA001_2040: bram_rdata <= {20'd0, PULSE_FRAME_1[16]};
                32'hA001_2044: bram_rdata <= {20'd0, PULSE_FRAME_1[17]};
                32'hA001_2048: bram_rdata <= {20'd0, PULSE_FRAME_1[18]};
                32'hA001_204C: bram_rdata <= {20'd0, PULSE_FRAME_1[19]};
                32'hA001_2050: bram_rdata <= {20'd0, PULSE_FRAME_1[20]};
                32'hA001_2054: bram_rdata <= {20'd0, PULSE_FRAME_1[21]};
                32'hA001_2058: bram_rdata <= {20'd0, PULSE_FRAME_1[22]};
                32'hA001_205C: bram_rdata <= {20'd0, PULSE_FRAME_1[23]};

                // --------------------------------------------------------
                // FRAME 2 ADDRESSES (Falling Edge: 1 Sample Per 32-bit word)
                // --------------------------------------------------------
                32'hA001_2060: bram_rdata <= {20'd0, PULSE_FRAME_2[0]};
                32'hA001_2064: bram_rdata <= {20'd0, PULSE_FRAME_2[1]};
                32'hA001_2068: bram_rdata <= {20'd0, PULSE_FRAME_2[2]};
                32'hA001_206C: bram_rdata <= {20'd0, PULSE_FRAME_2[3]};
                32'hA001_2070: bram_rdata <= {20'd0, PULSE_FRAME_2[4]};
                32'hA001_2074: bram_rdata <= {20'd0, PULSE_FRAME_2[5]};
                32'hA001_2078: bram_rdata <= {20'd0, PULSE_FRAME_2[6]};
                32'hA001_207C: bram_rdata <= {20'd0, PULSE_FRAME_2[7]};
                32'hA001_2080: bram_rdata <= {20'd0, PULSE_FRAME_2[8]};
                32'hA001_2084: bram_rdata <= {20'd0, PULSE_FRAME_2[9]};
                32'hA001_2088: bram_rdata <= {20'd0, PULSE_FRAME_2[10]};
                32'hA001_208C: bram_rdata <= {20'd0, PULSE_FRAME_2[11]};
                32'hA001_2090: bram_rdata <= {20'd0, PULSE_FRAME_2[12]};
                32'hA001_2094: bram_rdata <= {20'd0, PULSE_FRAME_2[13]};
                32'hA001_2098: bram_rdata <= {20'd0, PULSE_FRAME_2[14]};
                32'hA001_209C: bram_rdata <= {20'd0, PULSE_FRAME_2[15]};
                32'hA001_20A0: bram_rdata <= {20'd0, PULSE_FRAME_2[16]};
                32'hA001_20A4: bram_rdata <= {20'd0, PULSE_FRAME_2[17]};
                32'hA001_20A8: bram_rdata <= {20'd0, PULSE_FRAME_2[18]};
                32'hA001_20AC: bram_rdata <= {20'd0, PULSE_FRAME_2[19]};
                32'hA001_20B0: bram_rdata <= {20'd0, PULSE_FRAME_2[20]};
                32'hA001_20B4: bram_rdata <= {20'd0, PULSE_FRAME_2[21]};
                32'hA001_20B8: bram_rdata <= {20'd0, PULSE_FRAME_2[22]};
                32'hA001_20BC: bram_rdata <= {20'd0, PULSE_FRAME_2[23]};

                default: begin
                    bram_rdata <= 32'hDEAD_BEEF;
                end
            endcase
        end
    end
end


logic [31:0] tot;
logic [63:0] t_lead;

initial begin
  axi_master_calc.init(TOT_CALC_AXI.IF, "axi_master_calc");
  axi_master_bram.init(BRAM_AXI.IF, "axi_master_bram");
  rst = 1'b1;
  #1us;
  rst = 1'b0;


  axi_master_bram.write(32'h04, 32'hA001_2000, 32); // ADDR_START
  axi_master_bram.write(32'h08, 32'hA001_20BC, 32); // ADDR_STOP
  axi_master_calc.write(32'h00, 32'd380, 32); // THRESHOLD

  axi_master_bram.write(32'h00, 32'h1, 32); // START
  // #700ns;

  repeat(16) begin
    #250ns;
    axi_master_calc.read(32'h04, tot, 32);
    axi_master_calc.read(32'h08, t_lead[31:0], 32);
    axi_master_calc.read(32'h0C, t_lead[63:32], 32);

    $display("TOT = %dps  |  T_LEAD = %dns", tot, t_lead / 1000);
  end

  axi_master_bram.write(32'h00, 32'h0, 32);
  #1us;
  $finish(0);
end

endmodule
