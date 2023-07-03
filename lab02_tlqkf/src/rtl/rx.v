module rx(
  clk,
  n_rst,
  rxen,
  rxd,
  led_idle1,
  fnd_rxd
  );

input clk, n_rst;
input rxen;
input rxd;

output reg [7:0] fnd_rxd;
output reg led_idle1;

localparam IDLE = 2'h0; 
localparam DATA = 2'h1;
localparam STOP = 2'h2;

localparam CYCLE = 4'ha;

wire start_sig; //RXD 1 -> 0

reg [2:0] rx_state, rx_next_state;

reg [3:0] rx_cnt; //for 10count (start + data(8) + stop)
reg [3:0] rx_n_cnt;

always @(posedge clk or negedge n_rst)
	if(!n_rst) begin
		rx_state <= IDLE;
		rx_cnt <= 4'h0;
	end
	else begin
		rx_state <= rx_next_state;
		rx_cnt <= rx_n_cnt;
	end


assign start_sig = ((rx_state == IDLE) && (rxd == 1'b0) && (rxen == 1'b1))? 1'b1 : 1'b0;	

always @(*)
  case(rx_state)
    IDLE : rx_next_state = (start_sig == 1'b1) ? DATA : rx_state;
    DATA : rx_next_state = (rx_n_cnt == 4'h8) ? STOP : rx_state;
    STOP : rx_next_state = (rx_n_cnt == 4'h9) ? IDLE : rx_state;
    default : rx_next_state = IDLE;
  endcase

always @(*)
  case(rx_state)
    IDLE : rx_n_cnt = 4'h0;
    default : rx_n_cnt = (rxen == 1'b1) ? rx_cnt + 4'h1 : (rx_cnt == CYCLE) ? 4'h0 : rx_cnt;
  endcase
    
//rxd
always @(posedge clk or negedge n_rst)
  if(!n_rst) begin
    fnd_rxd <= 8'h00; //fnd default data
  end
  else begin
    if(rx_state == DATA && rxen == 1'b1) begin
      fnd_rxd <= {rxd,fnd_rxd[7:1]};
    end
  end 

  always @(posedge clk or negedge n_rst)
	if(!n_rst) begin
		led_idle1 <= 1'b0;
	end
	else begin
		led_idle1 <= (rx_state == IDLE) ? 1'b1 : 1'b0;
	end
    
endmodule


