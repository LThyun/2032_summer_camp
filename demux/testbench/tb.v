module tb;

reg din;
reg a;
reg b;

wire aout;
wire bout;
wire cout;
wire dout;

demux u_demux(
    .din(din),
    .a(a),
    .b(b),
    .aout(aout),
    .bout(bout),
    .cout(cout),
    .dout(dout)
);

initial begin 
    din = 1'b1;

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