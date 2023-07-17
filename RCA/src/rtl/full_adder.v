module full_adder(   
    input a,
    input b,
    input c_in,
    output s,
    output c_out
);

//assign s = (a^b)^c_in;
//assign c_out = c_in & (a ^ b) | (a & b);

wire s1;
wire c0;
wire c1;

half_adder u_half_adder1(
    .a(a),
    .b(b),
    .s(s1),
    .c_out(c0)
);

half_adder u_half_adder2(
    .a(s1),
    .b(c_in),
    .s(s),
    .c_out(c1)
);

assign c_out = c1 | c0;

endmodule