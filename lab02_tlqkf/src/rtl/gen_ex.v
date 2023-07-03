
//Hz = bps
//50MHz -> 9600bps
//count 50*10^6 / 9600 = 5208.33 => 5208
//50MHz -> 19200bps
//count 50*10^6 / 19200 = 2604.17 => 2604;
module gen_ex(
  clk,
  n_rst,
  speed,
  txen,
  rxen
  );

//9600
localparam MAX_9600 = 13'h1458; //5208
//19200
localparam MAX_19200 = 12'ha2c; //2604

localparam HALF_9600 = 13'h0a2c;
localparam HALF_19200 = 12'h516;

input clk, n_rst;
input speed;

output txen;
output rxen;



reg [12:0] cnt_0; //9600
reg [11:0] cnt_1; //19200



always @(posedge clk or negedge n_rst)
  if(!n_rst) begin
    cnt_0 <= 13'h0;
    cnt_1 <= 12'h0;
  end
  else begin
    if(speed == 1'b0) begin
      cnt_0 <= (cnt_0 == MAX_9600) ? 13'h0 : cnt_0 + 13'h0001;
    end
    else if(speed == 1'b1) begin
      cnt_1 <= (cnt_1 == MAX_19200) ? 12'h0 : cnt_1 + 12'h001;
    end
  end 
  
assign txen = ((cnt_0 == MAX_9600) || (cnt_1 == MAX_19200)) ? 1'b1 : 1'b0;
assign rxen = ((cnt_0 == HALF_9600) || (cnt_1 == HALF_19200)) ? 1'b1 : 1'b0;

 
/*
reg [4:0] cnt_0; //9600
reg [3:0] cnt_1; //19200

localparam max = 5'h17;
localparam mix = 4'hf;
localparam max_h = 5'h12;
localparam mix_h = 4'h7;

always @(posedge clk or negedge n_rst)
  if(!n_rst) begin
    cnt_0 <= 13'h0;
    cnt_1 <= 12'h0;
  end
  else begin
    if(speed == 1'b0) begin
      cnt_0 <= (cnt_0 == max) ? 13'h0 : cnt_0 + 13'h0001;
    end
    else if(speed == 1'b1) begin
      cnt_1 <= (cnt_1 == mix) ? 12'h0 : cnt_1 + 12'h001;
    end
  end  
  
  assign txen = ((cnt_0 == max) || (cnt_1 == mix)) ? 1'b1 : 1'b0;
  assign rxen = ((cnt_0 == max_h) || (cnt_1 == mix_h)) ? 1'b1 : 1'b0;
  
*/


endmodule