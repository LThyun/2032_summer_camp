module full_adder(   //1bit
    input a,
    input b,
    output s,
    output c
);
reg c_out;

assign s = a^b;
assign c = c_out;

always @(*) begin
    if((a == 1'b1)&(b == 1'b1))
    c_out = 1'b1;
    else
    c_out = 1'b0;
end

endmodule