module cla_4bit(
    input [3:0] a,
    input [3:0] b,
    input c_in,
    output [3:0] s,
    output c_out
);

wire [3:0] p;
wire [3:0] g;

wire c1;
wire c2;
wire c3;

assign p = a ^ g;
assign g = a & b;

assign c1 = g[0] | (p[0] & c_in);
assign c2 = g[1] | (p[1] & c1);
assign c3 = g[2] | (p[2] & c2);
assign c_out = g[3] | (p[3] & c3);


full_adder U_full_adder1(
    .a(a[0]),
    .b(b[0]),
    .c_in(c_in),
    .s(s[0]),
    .c_out()
);

full_adder U_full_adder2(
    .a(a[1]),
    .b(b[1]),
    .c_in(c1),
    .s(s[1]),
    .c_out()
);

full_adder U_full_adder3(
    .a(a[2]),
    .b(b[2]),
    .c_in(c2),
    .s(s[2]),
    .c_out()
);

full_adder U_full_adder4(
    .a(a[3]),
    .b(b[3]),
    .c_in(c3),
    .s(s[3]),
    .c_out()
);

endmodule