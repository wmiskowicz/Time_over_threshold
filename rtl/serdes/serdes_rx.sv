
module serdes_rx(
  input wire rst_n,
  adc_bus_if.in bus_a,
  adc_bus_if.in bus_b,
  adc_bus_if.in bus_c,
  adc_bus_if.in bus_d,

  output logic clk_data,
  output logic [48*4-1:0] rx_data
);

// TBD: Add clock synchronisation, offset compsensation, stobe verification

// ----- Local variables -----
wire [51:0] rx_dat_a, rx_dat_b, rx_dat_c, rx_dat_d;

// ----- Signal assignments -----
assign clk_data = clk_dat_a;


adc_bus_rx bus_a_rx (
  .rst_n    (rst_n),
  .bus_in   (bus_a),
  .clk_data (clk_dat_a),
  .rx_data  (rx_dat_a)
);

adc_bus_rx bus_b_rx (
  .rst_n    (rst_n),
  .bus_in   (bus_b),
  .clk_data (clk_dat_b),
  .rx_data  (rx_dat_b)
);

adc_bus_rx bus_c_rx (
  .rst_n    (rst_n),
  .bus_in   (bus_c),
  .clk_data (clk_dat_c),
  .rx_data  (rx_dat_c)
);

adc_bus_rx bus_d_rx (
  .rst_n    (rst_n),
  .bus_in   (bus_d),
  .clk_data (clk_dat_d),
  .rx_data  (rx_dat_d)
);


always_ff @(posedge clk_data) begin
  if (!rst_n) begin
    rx_data <= '0;
  end else begin
    for (int i = 0; i < 4; i++) begin

      // Bank A: Samples 0, 4, 8, 12
      rx_data[(i*48 + 0)  +: 12] <= rx_dat_a[(i*13 + 1) +: 12];

      // Bank B: Samples 1, 5, 9, 13
      rx_data[(i*48 + 12) +: 12] <= rx_dat_b[(i*13 + 1) +: 12];

      // Bank C: Samples 2, 6, 10, 14
      rx_data[(i*48 + 24) +: 12] <= rx_dat_c[(i*13 + 1) +: 12];

      // Bank D: Samples 3, 7, 11, 15
      rx_data[(i*48 + 36) +: 12] <= rx_dat_d[(i*13 + 1) +: 12];
    end
  end
end


endmodule
