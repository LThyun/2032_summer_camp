`timescale 1ns/1ps
`define T_CLK 10

module tb();
reg clk;
reg n_rst;
reg [3:0] A;
reg [3:0] B;
reg start;
wire buho;
wire [3:0] sum;

sub u_sub(
    .clk(clk),
    .n_rst(n_rst),
    .A(A),
    .B(B),
    .start(start),
    .buho(buho),
    .sum(sum)
);

initial begin
    clk = 1'b1;
	n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

always #(`T_CLK/2) clk = ~clk;

initial begin
    start = 1'b0;
    A = 4'h0; 
    B = 4'h0;

    #(`T_CLK)
    A = 4'b0100; //4
    B = 4'b0011; //2
    #2
    start = 1'b1;

    #(`T_CLK*2)
    A = 4'b0010; //2
    B = 4'b0101; //5

    #(`T_CLK*2)
    A = 4'b0010; //2
    B = 4'b0010; //5
    #(`T_CLK*10)

    $stop;
end
endmodule