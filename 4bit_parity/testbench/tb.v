module tb();

reg [3:0] data;
wire even_parity;

parity uut_parity(
    .data(data),
    .even_parity(even_parity)
);



initial begin 
    data = 4'b1010;
    #5
    
    $stop;
end

endmodule