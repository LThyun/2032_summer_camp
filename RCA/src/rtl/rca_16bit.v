module rca_16bit(
    input [15:0] a,
    input [15:0] b,
    input c_in,
    output [15:0] s,
    output c_out
);


wire c7;


rca_8bit u_rca_8bit1(
    .a(a[7:0]),
    .b(b[7:0]),
    .c_in(c_in),
    .s(s[7:0]),
    .c_out(c7)
);

rca_8bit u_rca_8bit2(
    .a(a[15:8]),
    .b(b[15:8]),
    .c_in(c7),
    .s(s[15:8]),
    .c_out(c_out)
);

endmodule