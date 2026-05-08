
module tot_core #(
  parameter WIDTH = 16
)(
  input wire clk,
  input wire rst_n,
  input wire start,
  input wire [WIDTH-1:0] thr,
  input wire [WIDTH-1:0] sample,

  output logic [WIDTH-1:0] tot,
  output logic [WIDTH-1:0] t_leading_edge,
  output logic [WIDTH-1:0] t_trailing_edge,
  output logic data_valid,
  output logic busy
);

typedef enum {
  IDLE, 
  WAIT,
  OVER_TH,
  FINISH
} state_t;


// ----- Local parameter -----
logic [WIDTH-1:0] time_counter;
logic [WIDTH-1:0] tot_counter;

// ----- Local variables -----
state_t state;
logic start_q, start_posedge;

// ----- Signal assignments -----
assign start_posedge = start && !start_q;

// ----- Module logic -----

always_ff @(posedge clk) begin
  start_q <= start;
end

always_ff @(posedge clk) begin
  if (!rst_n) begin
    time_counter <= WIDTH'(0);
  end
  else if (start_posedge) begin
    time_counter <= WIDTH'(0);
  end
  else begin
    time_counter <= time_counter + WIDTH'(1);
  end  
end
 

always_ff @(posedge clk) begin
  if (!rst_n) begin
    state <= IDLE;
    tot_counter <= WIDTH'(0);
    tot <= WIDTH'(0);
    t_leading_edge <= WIDTH'(0);
    t_trailing_edge <= WIDTH'(0);
    data_valid <= 1'b0;
    busy <= 1'b1;
  end
  else begin
    case(state)

      IDLE: begin
        if (start_posedge) begin
          state <= WAIT;
          data_valid <= 1'b0;
          tot_counter <= WIDTH'(0);
          busy <= 1'b1;
        end
        busy <= 1'b0;
      end

      WAIT: begin
        if (sample >= thr) begin
          state <= OVER_TH;
          tot_counter <= tot_counter + WIDTH'(1);
          t_leading_edge <= time_counter;
        end
      end

      OVER_TH: begin
        if (sample <= thr) begin
          state <= FINISH;
          t_trailing_edge <= time_counter;
        end
        else begin
          tot_counter <= tot_counter + WIDTH'(1);          
        end
      end
      
      FINISH: begin
        tot <= tot_counter;
        data_valid <= 1'b1;
        busy <= 1'b0;
        state <= IDLE;
      end

      default: state <= IDLE;

    endcase 
  end
end


endmodule
