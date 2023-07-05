`timescale 1ns/1ps
`define T_CLK 10

module tb();

reg clk;
reg n_rst;
reg t;
wire q;

t_ff u_t_ff(
    .clk(clk),
    .n_rst(n_rst),
    .t(t),
    .q(q)
);

initial begin
    clk = 1'b1;
	n_rst = 1'b0;
end

always #(`T_CLK/2) clk = ~clk;

initial begin 
    t = 1'b0;
    
    @(posedge clk);
    n_rst = 1'b1;
    
    @(negedge clk);
    t = 1'b1;

    @(negedge clk);
    t = 1'b0;

    @(negedge clk);
    t = 1'b1;

    @(negedge clk);

    @(negedge clk);
    t = 1'b0;

    @(negedge clk);
    $stop;
    end

endmodule