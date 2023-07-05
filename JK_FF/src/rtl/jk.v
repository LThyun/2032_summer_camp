module jk(
    clk,
    n_rst,
    j,
    k,
    q,
    q_bar
);

input clk;
input n_rst;
input k;
input j;
output reg q;
output q_bar;

assign q_bar = ~q;

always @(posedge clk or negedge n_rst)
begin
    if(!n_rst)begin
        q <= 1'b0;
    end
    else if (j == 1'b1 && k== 1'b0)
        q <= 1'b1;
    else if (j == 1'b0 && k== 1'b1)
        q <= 1'b0;
    else if (j == 1'b0 && k== 1'b0)
        q <= q;
    else if (j == 1'b1 && k== 1'b1)
        q <= ~q;
    else
        q <= 1'b0;
end

endmodule