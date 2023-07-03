module top_uart(
  clk,
  n_rst,
  tx_data,
  load,
  sw9,
  txd,
  rxd,
  fnd_rxd_top,
  fnd_rxd_1,
  fnd_rxd_2,
  fnd_rxd_3,
  led_idle,
  led_blink1,
  led_blink2,
  led_blink3,
  led_no
  );

input clk, n_rst;
input [3:0] tx_data;
input rxd;
input load;
input sw9;

output txd;
output [6:0] fnd_rxd_top;
output [6:0] fnd_rxd_1;
output [6:0] fnd_rxd_2;
output [6:0] fnd_rxd_3;
output led_idle;
output led_blink1;
output led_blink2;
output led_blink3;
output led_no;

wire txen;
wire rxen;
wire debounce_load;
wire ed_load;
wire ed_sw9;
wire txd_i;
wire rxd_i;
wire [7:0] fnd_rxd;
wire [31:0] tx_data_32;
wire [31:0] price_out;

assign txd = ~txd_i;
assign rxd_i = ~rxd;
assign led_no = ~led_idle;

  debounce ps_load(.clk(clk), .n_rst(n_rst), .din(load), .dout(debounce_load));

  edge_detecte edge_load(.clk(clk), .n_rst(n_rst), .in(debounce_load), .out(ed_load));
  
  bit8_encorder bit8_en(.din(tx_data), .bit_out(tx_data_32));
   
   gen_ex gen_enable(.clk(clk), .n_rst(n_rst), .speed(sw9), .txen(txen), .rxen(rxen));
   
   tx TTL_tx(.clk(clk), .n_rst(n_rst), .txen(txen), .tx_data_32(tx_data_32), .load(ed_load), .txd(txd_i),
    .led_idle(led_idle),
    .led_blink1(led_blink1),
    .led_blink2(led_blink2),
    .led_blink3(led_blink3));
   
   rx TTL_rx(.clk(clk), .n_rst(n_rst), .rxen(rxen), .rxd(rxd_i), .fnd_rxd(fnd_rxd));
   
   rx_price price(.din(tx_data), .din_rx(fnd_rxd), .price_out(price_out));
   
   //fnd_encorder fnd_of_rxd(.clk(clk), .n_rst(n_rst), .din(fnd_rxd), .fnd_out(fnd_rxd_top));
   
   fnd_encorder fnd_price_0(.clk(clk), .n_rst(n_rst), .din(price_out[7:0]), .fnd_out(fnd_rxd_top));
   fnd_encorder fnd_price_1(.clk(clk), .n_rst(n_rst), .din(price_out[15:8]), .fnd_out(fnd_rxd_1));
   fnd_encorder fnd_price_2(.clk(clk), .n_rst(n_rst), .din(price_out[23:16]), .fnd_out(fnd_rxd_2));
   fnd_encorder fnd_price_3(.clk(clk), .n_rst(n_rst), .din(price_out[31:24]), .fnd_out(fnd_rxd_3));
   
   
   
endmodule