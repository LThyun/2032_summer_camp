`timescale 1ns/1ps

module fnd_encorder(
	clk,
	n_rst,
	din,
	fnd_out
);

input clk;
input n_rst;
input [7:0] din;

output reg [6:0] fnd_out;

always@(din)
		case(din)
			8'h30 : fnd_out = 7'b100_0000;
			8'h31 : fnd_out = 7'b111_1001;
			8'h32 : fnd_out = 7'b010_0100;
			8'h33 : fnd_out = 7'b011_0000;
			8'h34 : fnd_out = 7'b001_1001;
			8'h35 : fnd_out = 7'b001_0010;
			8'h36 : fnd_out = 7'b000_0010;
			8'h37 : fnd_out = 7'b101_1000;
			8'h38 : fnd_out = 7'b000_0000;
			8'h39 : fnd_out = 7'b001_1000;
			//
			8'h41 : fnd_out = 7'b000_1000; //A
			8'h42 : fnd_out = 7'b000_0000; //B
			8'h43 : fnd_out = 7'b100_0110; //C
			8'h44: fnd_out = 7'b100_0000; //D
			8'h45: fnd_out = 7'b000_0110; //E
			8'h46: fnd_out = 7'b000_1110; //F
			8'h47: fnd_out = 7'b000_0010; //G
			8'h48: fnd_out = 7'b000_1001; //H
			8'h49: fnd_out = 7'b111_1001; //I
			8'h4a: fnd_out = 7'b111_0000; //J
			default : fnd_out = 7'b111_1111;
		endcase
		
endmodule
