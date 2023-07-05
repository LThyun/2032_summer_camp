module encoder(
a,
b
);

input [3:0] a;
output reg [1:0] b;

always @(*)begin
    if(a == 4'b0001) begin
        b <= 2'b00;
    end
    else if(a == 4'b0010) begin
        b <= 2'b01;
    end
    else if(a == 4'b0100) begin
        b <= 2'b10;
    end
    else if(a == 4'b1000) begin
        b <= 2'b11;
    end
    else b <= 2'bxx;
    end

endmodule