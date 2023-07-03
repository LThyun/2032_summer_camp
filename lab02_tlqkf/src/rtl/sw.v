`timescale 1ns/1ps

module sw(
	clk,
	n_rst,
	din,
	bit_out
);

input clk;
input n_rst;
input [7:0] din;

output reg [31:0] bit_out;

always@(din)
		case(din)
			8'h01 : bit_out = 32'h454b4f43;
			8'h02 : bit_out = 32'h41444f53;
			8'h04 : bit_out = 32'h554a4f53;
			8'h08 : bit_out = 32'h52454542;
			default : bit_out = 32'h11111111;
		endcase
		
endmodule


