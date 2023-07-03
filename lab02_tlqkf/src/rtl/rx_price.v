`timescale 1ns/1ps

module rx_price(
	din,
	din_rx,
	price_out
);

input [3:0] din;
input [7:0] din_rx;

//din 1 coke 1800won
//din 2 soda 1500won
//din 4 soju 1900won
//din 8 beer 2500won

output reg [31:0] price_out;

always@(*)
		case(din)
			4'h01 : price_out = (din_rx == 8'h40) ? 32'h01080000 : 32'h11111111; //COKE
			4'h02 : price_out = (din_rx == 8'h40) ? 32'h01050000 : 32'h11111111; //SODA
			4'h04 : price_out = (din_rx == 8'h40) ? 32'h01090000 : 32'h11111111; //SOJU
			4'h08 : price_out = (din_rx == 8'h40) ? 32'h02050000 : 32'h11111111; //BEER
			default : price_out = 32'h11111111;
		endcase 

endmodule

