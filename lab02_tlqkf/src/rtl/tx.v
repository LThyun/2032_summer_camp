module tx(
  clk,
  n_rst,
  txen,
  tx_data_32,
  load,
  txd,
  led_idle,
  led_blink1,
  led_blink2,
  led_blink3
  );

input clk, n_rst;
input txen;
input [31:0] tx_data_32;
input load;

output reg txd;
output reg led_idle;
output reg led_blink1;
output reg led_blink2;
output reg led_blink3;

localparam IDLE = 3'h0; 
localparam START = 3'h1;
localparam DATA = 3'h2;
localparam STOP = 3'h3;
localparam WAIT = 3'h4;

localparam CYCLE = 4'hb;

reg [2:0] tx_state, tx_next_state;

reg [3:0] tx_cnt; //for 10count (start + data(8) + stop)
reg [3:0] tx_n_cnt;
reg [2:0] cnt_4;

reg [25:0] cnt_cycle; //1second
reg [2:0] cnt_blink;   //blink led
    

always @(posedge clk or negedge n_rst)
   if(!n_rst) begin
      tx_state <= IDLE;
      tx_cnt <= 4'h0;
   end
   else begin
      tx_state <= tx_next_state;
      tx_cnt <= tx_n_cnt;
   end

always @(*)
  case(tx_state)
    IDLE : tx_next_state = (load == 1'b1) ? START : tx_state;
    START : tx_next_state = (tx_n_cnt == 4'h1) ? DATA : tx_state;
    DATA : tx_next_state = (tx_n_cnt == 4'ha) ? STOP : tx_state;
    STOP : tx_next_state = ((tx_cnt == 4'ha) && ((cnt_4 == 3'h0)||(cnt_4 == 3'h1)||(cnt_4 == 3'h2)))? START : (cnt_4 == 3'h4) ? WAIT : tx_state;
    WAIT : tx_next_state = (cnt_blink == 3'b110) ? IDLE : tx_state;
    default : tx_next_state = IDLE;
  endcase

always @(*)
  case(tx_state)
    IDLE : tx_n_cnt = 4'h0;
    default : tx_n_cnt = (txen == 1'b1) ? tx_cnt + 4'h1 : (tx_cnt == CYCLE) ? 4'h1 : tx_cnt;
  endcase
    
//txd
reg [7:0] shift_data;
reg [31:0] data_8;
always @(posedge clk or negedge n_rst)
  if(!n_rst) begin
    txd <= 1'b1;
    shift_data <= 8'h00;
    data_8 <= 31'h0000;
    cnt_4 <= 3'h0;
  end
  else begin
    if(tx_state == IDLE) begin
      data_8 <= tx_data_32;
      cnt_4 <= 3'h0;
    end
    if(tx_state == START && txen == 1'b1) begin
      shift_data <= data_8[7:0];
      txd <= 1'b0;
    end
    if(tx_state == DATA) begin
      if((txen == 1'b1) && (tx_n_cnt > 4'h1)  && (tx_n_cnt < 4'ha)) begin
        txd <= shift_data[0];
        shift_data <= {1'b1,shift_data[7:1]};
        data_8 <= {1'b1,data_8[31:1]};
      end
    end
    if(tx_state == STOP) begin
      shift_data <= 8'hff;
      txd <= 1'b1;
      cnt_4 <= cnt_4 + 3'h1;
    end
  end 
    
always @(posedge clk or negedge n_rst)
   if(!n_rst) begin
      led_idle <= 1'b0;
   end
   else begin
      led_idle <= (tx_state == IDLE) ? 1'b1 : 1'b0;
   end
   
always @(posedge clk or negedge n_rst)
   if(!n_rst) begin
      cnt_cycle <= 26'd0;
   end
   else begin
      if(tx_state == WAIT) begin
        cnt_cycle <= (cnt_cycle == 26'd50000000) ? 26'd0 : cnt_cycle + 26'd1;
      end
   end

always @(posedge clk or negedge n_rst)
   if(!n_rst) begin
      cnt_blink <= 3'b000;
   end
   else begin
      if((tx_state == WAIT) && (cnt_cycle == 26'd50000000)) begin
        cnt_blink <= cnt_blink + 3'b001;
      end
      else if(tx_state == IDLE) begin
         cnt_blink <= 3'b000;
      end
   end

always @(posedge clk or negedge n_rst)
   if(!n_rst) begin
      led_blink1 <= 1'b0;
      led_blink2 <= 1'b0;
      led_blink3 <= 1'b0;
   end
   else begin
      if(tx_state == WAIT) begin
        led_blink1 <= (led_blink1 == 1'b1 && ((cnt_cycle == 26'd50000000)))? 1'b0 :
    (led_blink1 == 1'b0 && ((cnt_cycle == 26'd50000000)))? 1'b1 : led_blink1;
      led_blink2 <= (led_blink2 == 1'b1 && ((cnt_cycle == 26'd50000000)))? 1'b0 :
    (led_blink2 == 1'b0 && ((cnt_cycle == 26'd50000000)))? 1'b1 : led_blink2;
      led_blink3 <= (led_blink3 == 1'b1 && ((cnt_cycle == 26'd50000000)))? 1'b0 :
    (led_blink3 == 1'b0 && ((cnt_cycle == 26'd50000000)))? 1'b1 : led_blink3;
      end
   end

   
endmodule