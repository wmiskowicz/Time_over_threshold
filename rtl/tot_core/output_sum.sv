// This module is responsible for adding tot_calculator product with a timestamp.
// Output has to be synchronised to 266.6MHz


module output_sum #(
  parameter PORTS_WIDTH = 32
)(
  input wire clk_timestamp,      // 40MHz
  input wire clk_data,           // 266.6MHz
  input wire rst_n,

  input logic                   data_valid_in,
  input logic [PORTS_WIDTH-1:0] tot_in,
  input logic [PORTS_WIDTH-1:0] t_leading_edge_in,

  output logic                   data_valid_out,
  output logic [PORTS_WIDTH-1:0] tot_out,
  output logic [63:0]            t_leading_edge_out // Picosecond master timestamp
);

// TBD: Add clock synchronisation

// ----- Local parameters -----
localparam bit [63:0] PERIOD_40M_PS = 64'd25_000;

// ----- Local veriables -----
logic [63:0] master_timestamp;


always_ff @(posedge clk_timestamp) begin
  if (!rst_n) begin
    master_timestamp <= 64'd0;
  end 
  else begin
    master_timestamp <= master_timestamp + PERIOD_40M_PS;
  end
end


// --- Output buffer ---
always_ff @(posedge clk_data) begin
  if (!rst_n) begin
    data_valid_out      <= 1'b0;
    tot_out             <= '0;
    t_leading_edge_out  <= '0;
  end else begin
    data_valid_out <= data_valid_in;

    if (data_valid_in) begin
      tot_out <= tot_in;

      t_leading_edge_out <= t_leading_edge_in + master_timestamp;
    end
  end
end

endmodule
