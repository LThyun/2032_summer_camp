module parity(
    input [3:0] data,
    output even_parity
);

reg [1:0] D;

always @(*)
begin
    D[0] = data[0] ^ data[1];
    D[1] = data[2] ^ data[3];
end

assign even_parity = D[0] ^ D[1];
// add_parity는 even_parity = ~(D[0] ^ D[1]);
endmodule