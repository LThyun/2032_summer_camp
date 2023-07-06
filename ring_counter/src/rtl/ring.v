module ring(
    input clk,
    input n_rst,
    output [3:0] q
);

reg [3:0] q_out;

assign q = q_out;


always @(posedge clk or negedge n_rst) begin
    if(!n_rst)
        q_out <= 4'h0;
    else if (q_out == 4'b0011)
        q_out <= 4'h0;
    else
        q_out <= q_out + 4'h1;
end

endmodule