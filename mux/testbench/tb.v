module tb;

reg [3:0] a;
reg [3:0] b;
reg [3:0] c;
reg [3:0] d;
reg [1:0] y;
wire [3:0] dout;


mux u_mux(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .y(y),
    .dout(dout)
);

initial begin 
    a = 4'b0001;
    b = 4'b0010;
    c = 4'b0100;
    d = 4'b1000;
    y = 2'b00;
    #5 
    y = 2'b01; 
    #5 
    y = 2'b10;
    #5
    y = 2'b11;
    #5
    $stop;
    end

endmodule