module tb();
reg [31:0] a;
reg [31:0] b;
reg c_in;

wire [31:0] s;
wire c_out;

rca_32bit u_rca_32bit(
    .a(a),
    .b(b),
    .s(s),
    .c_in(c_in),
    .c_out(c_out)
);

initial begin 
    c_in = 1'h0;
    a = 32'h4;
    b = 32'h5;
    #5 
    c_in = 1'h1;
    a = 32'h4;
    b = 32'h5; 
    #5
    c_in = 1'h0;
    a = 32'h6;
    b = 32'h7;
    #5 
    c_in = 1'h1;
    a = 32'h6;
    b = 32'h7; 
    #5 
    $stop;
    end

endmodule

