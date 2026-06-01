`timescale 1ns / 1ps

module bram_controller_tb;
  
  import axi_vip_pkg::*;
  import axi_pkg::*;


// ----- AXI BFM -----
axi_master_t axi_master = new();

// ----- Local parameters -----
localparam CLK_PERIOD = 10ns; // 100MHz

// ----- Local variables -----
logic clk;
logic rst;
wire start;
wire [31:0] bram_addr;
wire bram_arvalid;
logic [31:0] bram_rdata;
wire bram_rvalid;

// ----- Samples stream -----
wire [287:0] samples;
wire samples_valid;
wire samples_ready;

// ----- AXI signals -----
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
  .bram_arready   (1'b1),
  .bram_arvalid   (bram_arvalid),
  .bram_rdata     (bram_rdata),
  .bram_rready    (),
  .bram_rvalid    (1'b1),
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
  .samples_ready  (1'b1),
  .samples_valid  (samples_valid)
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
  ) BFM_AXI (
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


always_ff @ (posedge clk) begin
  if (rst)
    bram_rdata <= 0;
  else
    bram_rdata <= bram_rdata + 1;
end



initial begin
  axi_master.init(BFM_AXI.IF, "axi_master");
  rst = 1'b1;
  #1us;
  rst = 1'b0;


  axi_master.write(32'h04, 32'hA001_2000, 32);
  axi_master.write(32'h08, 32'hA001_2040, 32);
  axi_master.write(32'h00, 32'h1, 32);

  #100us;

  axi_master.write(32'h00, 32'h0, 32);
  #1us;
  $finish(0);
end

endmodule
