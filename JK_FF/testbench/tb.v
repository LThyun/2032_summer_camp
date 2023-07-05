`timescale 1ns/1ps
`define T_CLK 10

module tb();

reg clk;
reg n_rst;
reg j;
reg k;
wire q;
wire q_bar;

jk u_jk(
    .clk(clk),
    .n_rst(n_rst),
    .j(j),
    .k(k),
    .q(q),
    .q_bar(q_bar)
);

initial begin
    clk = 1'b1;
	n_rst = 1'b0;
end

always #(`T_CLK/2) clk = ~clk;

initial begin 
    
    j = 1'b0;
    k = 1'b0;
    @(posedge clk);
    n_rst = 1'b1;

    @(negedge clk);
    j = 1'b1;
    k = 1'b0;

    @(negedge clk);
    j = 1'b0;
    k = 1'b1;

    @(negedge clk);
    j = 1'b0;
    k = 1'b0;

    @(negedge clk);
    j = 1'b1;
    k = 1'b1;

    @(negedge clk);
    j = 1'b1;
    k = 1'b0;

    @(negedge clk);
    $stop;
    end

endmodule