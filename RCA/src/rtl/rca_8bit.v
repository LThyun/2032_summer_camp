module rca_8bit(
    input [7:0] a,
    input [7:0] b,
    input c_in,
    output [7:0] s,
    output c_out
);


wire c5;


rca_4bit u_rca_4bit1(
    .a(a[3:0]),
    .b(b[3:0]),
    .c_in(c_in),
    .s(s[3:0]),
    .c_out(c5)
);

rca_4bit u_rca_4bit2(
    .a(a[7:4]),
    .b(b[7:4]),
    .c_in(c5),
    .s(s[7:4]),
    .c_out(c_out)
);

endmodule