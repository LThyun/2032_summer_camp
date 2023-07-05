module tb;

reg [3:0] a;
wire [1:0] b;


encoder u_encoder(
    .a(a),
    .b(b)
);

initial begin 

    a = 4'b0001;
    #5 
    a = 4'b0010; 
    #5 
    a = 4'b0100;
    #5
    a = 4'b1000;
    #5
    $stop;
    end

endmodule