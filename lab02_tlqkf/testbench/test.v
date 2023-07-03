`timescale 1ns/1ps
`define T_CLK 10

module testbench();
  
reg clk, n_rst;
reg [7:0] tx_data;
reg sw9;
reg load;
reg rxd;
wire txd;
wire [6:0] fnd_rxd_top;
  

initial begin
	clk = 1'b1;
	n_rst = 1'b0;
	//tx_data = 32'b0101_0110__0110_1010__1100_1011__0010_0110;
	tx_data = 8'b0000_0001;
	load = 1'b0;
	sw9 = 1'b0;
	rxd = 1'b1;
	#(`T_CLK*2.2) n_rst = 1'b1;
end

always #(`T_CLK/2) clk = ~clk;
  
initial begin
  #(`T_CLK *12) tx_data = 8'b0000_0001;
  #(`T_CLK *30) load = 1'b1;
  #(`T_CLK) load = 1'b0;
  #(`T_CLK * 3000);
  
  //#(`T_CLK *12) tx_data = 32'b0111_0110__0000_1010__1100_0001__0010_1110;
  #(`T_CLK *12) tx_data = 8'b0000_0010;
  #(`T_CLK *5) load = 1'b1;
  #(`T_CLK) load = 1'b0;
  #(`T_CLK * 3000);
  
  //0x31
  #(`T_CLK * 23) rxd = 1'b0;
  #(`T_CLK * 23) rxd = 1'b1;
  #(`T_CLK * 23) rxd = 1'b0;
  #(`T_CLK * 23) rxd = 1'b0;
  #(`T_CLK * 23) rxd = 1'b0;
  #(`T_CLK * 23) rxd = 1'b1;
  #(`T_CLK * 23) rxd = 1'b1;
  #(`T_CLK * 23) rxd = 1'b0;
  #(`T_CLK * 23) rxd = 1'b0;
  #(`T_CLK * 23) rxd = 1'b1;
  #(`T_CLK * 250);
  
  
  
  $stop();

end
  
  top_uart top_uart_a(
  .clk(clk),
  .n_rst(n_rst),
  .tx_data(tx_data),
  .load(load),
  .sw9(sw9),
  .sw10(sw10),
  .txd(txd),
  .rxd(rxd),
  .fnd_rxd_top
);


endmodule