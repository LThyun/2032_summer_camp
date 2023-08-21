module cla_8bit(
    input [7:0] a,
    input [7:0] b,
    input c_in,
    output [7:0] s,
    output c_out
);

wire c1;

cla_4bit u_cla_4bit_1(
    .a(a[3:0]),
    .b(b[3:0]),
    .c_in(c_in),
    .s(s[3:0]),
    .c_out(c1)
);

cla_4bit u_cla_4bit_2(
    .a(a[7:4]),
    .b(b[7:4]),
    .c_in(c1),
    .s(s[7:4]),
    .c_out(c_out)
);

endmodule