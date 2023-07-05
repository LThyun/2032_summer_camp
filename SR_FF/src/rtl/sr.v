module sr(
    clk,
    n_rst,
    s,
    r,
    q,
    q_bar
);

input clk;
input n_rst;
input s;
input r;
output reg q;
output q_bar;

assign q_bar = ~q;

always @(posedge clk or negedge n_rst)
begin
    if(!n_rst)
        q <= 1'b0;
    else if (s == 1'b1 && r == 1'b0)
        q <= 1'b1;
    else if (s == 1'b0 && r == 1'b1)
        q <= 1'b0;
    else if (s == 1'b0 && r == 1'b0)
        q <= q;
end
    //else if (s == 1'b1 && r == 1'b1)
    //q <= 1'bx;

endmodule