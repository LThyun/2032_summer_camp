module tb;

reg a;
reg b;
wire s;
wire c;


half_adder u_half_adder(
    .a(a),
    .b(b),
    .s(s),
    .c(c)
);

initial begin 

    a = 1'b0;
    b = 1'b0;
    #5 
    a = 1'b0;
    b = 1'b1; 
    #5 
    a = 1'b1;
    b = 1'b0;
    #5
    a = 1'b1;
    b = 1'b1;
    #5
    $stop;
    end

endmodule