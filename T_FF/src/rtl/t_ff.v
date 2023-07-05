module t_ff(
    clk,
    n_rst,
    t,
    q
);

input clk;
input n_rst;
input t;
output reg q;


always @(posedge clk or negedge n_rst)
begin
    if(!n_rst)
        q <= 1'b0;
    else if (t == 1'b1 && q == 1'b0)
        q <= 1'b1;
    else if (t == 1'b0 && q == 1'b1)
        q <= q;
    else if (t == 1'b0 && q ==1'b0)
        q <= 1'b0;
    else if (t == 1'b1 && q == 1'b1)
        q <= ~q;
    else
        q = 1'b0;
end

endmodule