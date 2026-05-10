`include "./adc_bfm/adc12dl3200_bfm.sv"


module serdes_rx_tb;


// ----- Local variables -----
logic rst_n;
logic clk_div;
logic [311:0] rx_data_out;

typedef logic [23:0][11:0] adc_sample_vector_t;
adc_sample_vector_t debug_vector;


// Unpacked array for peeking values
assign debug_vector = adc_sample_vector_t'(rx_data_out);


// Parameters matching the BFM class
localparam real BIT_CLK_PS = 625.0; // 1.6 Gbps
localparam int  FRAME_LEN  = 8;

// ----- Physical Interfaces -----
adc_bus_if adc_bus_a();
adc_bus_if adc_bus_b();
adc_bus_if adc_bus_c();
adc_bus_if adc_bus_d();

// ----- Class-based BFM Handle -----
adc_full_driver bfm;

// ----- DUT -----
serdes_rx dut (
  .rst_n    (rst_n),
  .bus_a    (adc_bus_a.in),
  .bus_b    (adc_bus_b.in),
  .bus_c    (adc_bus_c.in),
  .bus_d    (adc_bus_d.in),
  .clk_data (clk_div),
  .rx_data  (rx_data_out)
);

// ----- BFM Initialization and Data Loop -----
initial begin
  // 1. Initialize the Class BFM with virtual interfaces
  bfm = new(adc_bus_a, adc_bus_b, adc_bus_c, adc_bus_d, FRAME_LEN);

  // 2. Start the BFM internal threads (Clocks and Drivers)
  bfm.run(BIT_CLK_PS);

  // 3. Reset Sequence
  rst_n = 1'b0;
  #1us;
  rst_n = 1'b1;
  #100ns;

end

// ----- Monitor -----
always_ff @(posedge clk_div) begin
  if (rst_n) begin
    // Displaying Sample 0 for each bank
    $display("a=%d | b=%d | c=%d | d=%d |",
      rx_data_out[11:0],  // Bank A, Sample 0, 4, 8, 12
      rx_data_out[23:12], // Bank B, Sample 1, 5, 9, 13
      rx_data_out[35:24], // Bank C, Sample ...
      rx_data_out[47:36]  // Bank D, Sample ...
    );
  end
end

// always_ff @(posedge adc_bus_a.clk_p or posedge adc_bus_a.clk_n) begin
//     $display("data A=%d | B=%d | C=%d | D=%d", 
//     adc_bus_a.dat_p,
//     adc_bus_b.dat_p,
//     adc_bus_c.dat_p,
//     adc_bus_d.dat_p
//     );
// end

initial begin
    for (int i = 0; i < 1024; i += 4) begin
      bfm.bus[0].push(i);
      bfm.bus[1].push((i+1));
      bfm.bus[2].push((i+2));
      bfm.bus[3].push((i+3));

      // Synchronize loop to the Bus Clock (SDR speed)
      // @(posedge adc_bus_a.clk_p);
    end
end


endmodule
