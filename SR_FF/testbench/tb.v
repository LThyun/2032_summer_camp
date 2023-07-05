`timescale 1ns/1ps
`define T_CLK 10

module tb();

reg clk;
reg n_rst;
reg s;
reg r;
wire q;
wire q_bar;

sr u_sr(
    .clk(clk),
    .n_rst(n_rst),
    .s(s),
    .r(r),
    .q(q),
    .q_bar(q_bar)
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
    s = 1'b1;
    r = 1'b0;

    @(negedge clk);
    s = 1'b0;
    r = 1'b1;

    @(negedge clk);
    s = 1'b1;
    r = 1'b1;

    @(negedge clk);
    s = 1'b1;
    r = 1'b0;

    @(negedge clk);
    s = 1'b0;
    r = 1'b0;

    @(negedge clk);
    $stop;
    end

endmodule