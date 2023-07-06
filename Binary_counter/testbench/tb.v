`timescale 1ns/1ps
`define T_CLK 10

module tb();

reg clk;
reg n_rst;
reg down;
wire [3:0] q_out;

binary u_binary(
    .clk(clk),
    .n_rst(n_rst),
    .down (down),
    .q_out(q_out)
);

initial begin
    clk = 1'b1;
	n_rst = 1'b0;
end

always #(`T_CLK/2) clk = ~clk;

initial begin 
    @(posedge clk);
    n_rst = 1'b1;

    down = 1'b0;
    repeat(16) @(negedge clk);
    
    down = 1'b1;
    repeat(16) @(negedge clk);
    
    $stop;
    end

endmodule