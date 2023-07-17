module johnson(
    input clk,
    input n_rst,
    output [3:0] q
);

reg [3:0] q_out;

assign q = q_out;


always @(posedge clk or negedge n_rst) begin
    if(!n_rst)
        q_out <= 4'h0;
    else if (q_out[0] == 1'b0)
    begin
        q_out = q_out >> 1;
        q_out[3] <= 1'h1;
    end
    else 
    begin
        q_out = q_out >> 1;
        q_out[3] <= 1'h0;
    end
end


endmodule