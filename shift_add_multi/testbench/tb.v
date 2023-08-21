`timescale 1ns/1ps
`define T_CLK 10

module tb();
reg clk;
reg n_rst;
reg [3:0] multiplier;
reg [3:0] multiplicand;
reg start;
wire fin;
wire [3:0] count;
wire [7:0] product;

multi u_multi(
    .clk(clk),
    .n_rst(n_rst),
    .multiplicand(multiplicand),
    .multiplier(multiplier),
    .start(start),
    .fin(fin),
    .count(count),
    .product(product)
);

initial begin
    clk = 1'b1;
	n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

always #(`T_CLK/2) clk = ~clk;

initial begin 
    start = 1'b0;
    multiplicand = 4'h0; 
    multiplier = 4'h0;

    #(`T_CLK)
    multiplicand = 4'b0110; //4
    multiplier = 4'b0111; //3
    #2
    start = 1'b1;

    //#(`T_CLK)
    //start = 1'b0;
    #(`T_CLK*20)

    $stop;
end

endmodule