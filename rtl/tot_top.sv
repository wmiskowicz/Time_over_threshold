module tot_top#(
  parameter int WIDTH = 32
)(
  input wire clk_timestamp,
  input wire clk_sample,
  input wire rst_n,
  input logic [WIDTH-1:0] thr,

  output logic [WIDTH-1:0] tot,
  output logic [WIDTH-1:0] t_leading_edge
);

// ----- Local variables -----
wire core_busy;


// ----- FIFO -----
wire slave_data_valid;
wire rd_en;
wire wr_en;
wire fifo_full;
wire fifo_empty;
logic [WIDTH-1:0] sample;
logic [WIDTH-1:0] rx_data;


// ----- Signal assignments -----
assign rd_en = !fifo_empty && !core_busy;
assign wr_en = slave_data_valid && !fifo_full;



// ----- Module logic -----
tot_core #(
  .WIDTH(WIDTH)
)
u_tot_core (
  .clk            (clk_timestamp),
  .rst_n          (rst_n),
  .sample         (sample),
  .start          (start),

  .data_valid     (data_valid),
  .busy           (core_busy),
  .t_leading_edge (t_leading_edge),
  .t_trailing_edge(t_trailing_edge),
  .thr            (thr),
  .tot            (tot)
);


  
endmodule
