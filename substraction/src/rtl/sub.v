module sub(
    input clk,
    input n_rst,
    input [3:0] A,
    input [3:0] B,
    input start,
    output reg buho,
    output reg [3:0] sum
);

reg [3:0] a;
reg [3:0] b;

always@(posedge clk or negedge n_rst)begin
if(!n_rst)begin
    sum <= 4'b0;
    buho <= 1'b0;
end
else if(A >= B)begin
    sum <= (start == 1'b1)? A + (~B + 1'b1) : sum;
end
else if (A < B)begin //음수
    sum <= (start == 1'b1)? ~(A + (~B + 1'b1))+1 : sum;
    buho <= 1'b1;
end
else begin
    buho <= 1'b0;
    sum <= sum;
end
end

endmodule

/*reg d1,d2;
always @(posedge clk or negedge n_rst)
begin
    if(!n_rst)
    begin
        d1<=0;
        d2<=0;
    end
    else
    begin
        d1<=start;
        d2<=d1;
    end
end
wire edge_start = (d1&&!d2)?1'b1:1'b0;*/