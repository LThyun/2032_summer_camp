`timescale 1ns/1ps
`define T_CLK 10

module tb();

reg clk;
reg n_rst;
reg d;
wire q;

d_ff u_d_ff(
    .clk(clk),
    .n_rst(n_rst),
    .d(d),
    .q(q)
);

initial begin
    clk = 1'b1;
	n_rst = 1'b0;
end

always #(`T_CLK/2) clk = ~clk;

initial begin 
    @(posedge clk);
    n_rst = 1'b1;
    
    @(negedge clk);
    d = 1'b1;

    @(negedge clk);
    d = 1'b0;

    @(negedge clk);
    d = 1'b1;

    @(negedge clk);

    @(negedge clk);
    d = 1'b0;

    @(negedge clk);
    $stop;
    end

endmodule