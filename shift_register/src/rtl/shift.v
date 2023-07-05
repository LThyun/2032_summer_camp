module shift(
    clk,
    n_rst,
    data,
    q,

);

input clk;
input n_rst;
input data;
output reg [3:0] q;


always @(posedge clk or negedge n_rst)
begin
    if(!n_rst)
        q <= 4'b0000;
    else begin
        q[3] <= data;
        q[2] <= q[3];
        q[1] <= q[2];
        q[0] <= q[1];
end
end

endmodule

