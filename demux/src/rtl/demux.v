module demux(
din,
a,
b,
aout,
bout,
cout,
dout
);

input din;
input a;
input b;

output reg aout;
output reg bout;
output reg cout;
output reg dout;


always @(*) begin
if(a == 1'b0 && b == 1'b0) begin
    aout = 1'b0;
    bout = 1'b0;
    cout = 1'b0;
    dout = 1'b1;
end
else if (a == 1'b0 && b == 1'b1) begin
    aout = 1'b0;
    bout = 1'b0;
    cout = 1'b1;
    dout = 1'b0;
end
else if (a == 1'b1 && b == 1'b0) begin
    aout = 1'b0;
    bout = 1'b1;
    cout = 1'b0;
    dout = 1'b0;
end
else if (a == 1'b1 && b == 1'b1) begin
    aout = 1'b1;
    bout = 1'b0;
    cout = 1'b0;
    dout = 1'b0;
end
end

endmodule