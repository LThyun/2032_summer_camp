module cla_16bit(
    input [15:0] a,
    input [15:0] b,
    input c_in,
    output [15:0] s,
    output c_out
);

wire c1;


cla_8bit u_cla_8bit_1(
    .a(a[7:0]),
    .b(b[7:0]),
    .c_in(c_in),
    .s(s[7:0]),
    .c_out(c1)
);

cla_8bit u_cla_8bit_2(
    .a(a[15:8]),
    .b(b[15:8]),
    .c_in(c1),
    .s(s[15:8]),
    .c_out(c_out)
);

endmodule