module mux(
a,
b,
c,
d,
y,
dout
);

input [3:0] a;
input [3:0] b;
input [3:0] c;
input [3:0] d;
input [1:0] y;
output reg [3:0] dout;

always @(*)begin
    if(y == 2'b00) begin
        dout <= a;
    end
    else if(y == 2'b01) begin
        dout <= b;
    end
    else if(y == 2'b10) begin
        dout <= c;
    end
    else if(y == 2'b11) begin
        dout <= d;
    end
    else dout <= 4'bxxxx;
    end

endmodule