module d_ff(
    clk,
    n_rst,
    d,
    q
);

input clk;
input n_rst;
input d;
output reg q;


always @(posedge clk or negedge n_rst)
begin
    if(!n_rst)
        q <= 1'b0;
    else if (d == 1'b1)
        q <= d;
    else if (d == 1'b0)
        q <= d;
end

endmodule