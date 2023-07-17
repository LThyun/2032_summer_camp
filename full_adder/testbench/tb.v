module tb; //full_adder_check
reg a;
reg b;
reg c_in;
wire s;
wire c_out;

full_adder u_full_adder(
    .a(a),
    .b(b),
    .s(s),
    .c_in(c_in),
    .c_out(c_out)
);

initial begin 
    c_in = 1'b0;
    a = 1'b0;
    b = 1'b0;
    #5 
    c_in = 1'b1;
    a = 1'b0;
    b = 1'b0; 
    #5 
    c_in = 1'b0;
    a = 1'b1;
    b = 1'b0; 
    #5 
    c_in = 1'b1;
    a = 1'b1;
    b = 1'b0;
    #5
    c_in = 1'b0;
    a = 1'b0;
    b = 1'b1;
    #5 
    c_in = 1'b1;
    a = 1'b0;
    b = 1'b1; 
    #5 
    c_in = 1'b0;
    a = 1'b1;
    b = 1'b1; 
    #5 
    c_in = 1'b1;
    a = 1'b1;
    b = 1'b1; 
    #5
    $stop;
    end

endmodule

