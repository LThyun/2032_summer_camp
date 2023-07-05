module tb;

reg [1:0] a;
wire [3:0] b;


decoder u_decoder(
    .a(a),
    .b(b)
);

initial begin 

    a = 2'b00;
    #5 
    a = 2'b01; 
    #5 
    a = 2'b10;
    #5
    a = 2'b11;
    #5
    $stop;
    end

endmodule