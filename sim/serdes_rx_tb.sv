module serdes_rx_tb;

// ----- Local variables -----
logic rst_n;
logic clk_div;
logic [191:0] rx_data_out;

// Parameters matching the BFM class
localparam real BIT_CLK_PS = 625.0; // 1.6 Gbps
localparam int  FRAME_LEN  = 8;

// ----- Physical Interfaces -----
adc_bus_if itf_a();
adc_bus_if itf_b();
adc_bus_if itf_c();
adc_bus_if itf_d();

// ----- Class-based BFM Handle -----
adc_full_driver bfm;

// ----- DUT -----
serdes_rx dut (
  .rst_n    (rst_n),
  .bus_a    (itf_a.in),
  .bus_b    (itf_b.in),
  .bus_c    (itf_c.in),
  .bus_d    (itf_d.in),
  .clk_data (clk_div),
  .rx_data  (rx_data_out)
);

// ----- BFM Initialization and Data Loop -----
initial begin
  // 1. Initialize the Class BFM with virtual interfaces
  bfm = new(itf_a, itf_b, itf_c, itf_d, FRAME_LEN);

  // 2. Start the BFM internal threads (Clocks and Drivers)
  bfm.run(BIT_CLK_PS);

  // 3. Reset Sequence
  rst_n = 1'b0;
  #1us;
  rst_n = 1'b1;
  #100ns;

  // 4. Data Pushing Loop
  // We push 2 samples per BUS CLK cycle because the ADC is DDR
  forever begin
    for (int i = 0; i < 1024; i += 2) begin
      // Push first set of samples (will be captured on clk_p posedge)
      bfm.bus[0].push(i);
      bfm.bus[1].push((i+100));
      bfm.bus[2].push((i+200));
      bfm.bus[3].push((i+300));

      // Push second set of samples (will be captured on clk_p negedge)
      bfm.bus[0].push((i+1));
      bfm.bus[1].push((i+101));
      bfm.bus[2].push((i+201));
      bfm.bus[3].push((i+301));

      // Synchronize loop to the Bus Clock (SDR speed)
      @(posedge itf_a.clk_p);
    end
  end
end

// ----- Monitor -----
always_ff @(posedge clk_div) begin
  if (rst_n) begin
    // Displaying Sample 0 for each bank
    $display("a=%d | b=%d | c=%d | d=%d |",
      dut.rx_dat_a[11:0],  // Bank A, Sample 0, 4, 8, 12
      dut.rx_dat_b[23:12], // Bank B, Sample 1, 5, 9, 13
      dut.rx_dat_c[35:24], // Bank C, Sample ...
      dut.rx_dat_d[47:36]  // Bank D, Sample ...
    );
  end
end

endmodule
