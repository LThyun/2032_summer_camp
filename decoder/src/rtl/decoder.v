module decoder(
a,
b
);

input [1:0] a;
output reg [3:0] b;

always @(*)begin
    if(a == 2'b00) begin
        b <= 4'b0001;
    end
    else if(a == 2'b01) begin
        b <= 4'b0010;
    end
    else if(a == 2'b10) begin
        b <= 4'b0100;
    end
    else if(a == 2'b11) begin
        b <= 4'b1000;
    end
    else b <= 4'bxxxx;
    end

endmodule