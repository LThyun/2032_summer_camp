`timescale 1ns/1ps
`define T_CLK 10

module tb();

reg clk;
reg n_rst;
wire [3:0] q;

johnson u_johnson(
    .clk(clk),
    .n_rst(n_rst),
    .q(q)
);

initial begin
    clk = 1'b1;
	n_rst = 1'b0;
end

always #(`T_CLK/2) clk = ~clk;

initial begin
    @(posedge clk) 
    n_rst = 1'b1;

    #(`T_CLK*20)

    $stop;
    end

endmodule

