module rca_32bit(
    input [31:0] a,
    input [31:0] b,
    input c_in,
    output [31:0] s,
    output c_out
);


wire c9;

rca_16bit u_rca_16bit(
    .a(a[15:0]),
    .b(b[15:0]),
    .c_in(c_in),
    .s(s[15:0]),
    .c_out(c9)
);

rca_16bit u_rca_16bit2(
    .a(a[31:16]),
    .b(b[31:16]),
    .c_in(c9),
    .s(s[31:16]),
    .c_out(c_out)
);

endmodule