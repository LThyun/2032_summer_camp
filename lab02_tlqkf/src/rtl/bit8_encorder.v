`timescale 1ns/1ps

module bit8_encorder(
	din,
	bit_out
);

input [3:0] din;

output reg [31:0] bit_out;

always@(din)
		case(din)
			4'h01 : bit_out = 32'h454b4f43; //COKE
			4'h02 : bit_out = 32'h41444f53; //SODA
			4'h04 : bit_out = 32'h554a4f53; //SOJU
			4'h08 : bit_out = 32'h52454542; //BEER
			default : bit_out = 32'h11111111;
		endcase
		
endmodule



