module gray(
    input clk,
    input n_rst,
    output [2:0] q
);

reg [2:0] q_out;
reg [3:0] cnt;

assign q = q_out;

always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt <= 4'h0;
    end
    else begin
        cnt <= (cnt==4'h7) ? 4'h0 : cnt + 1'b1;
    end
end

always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        q_out <= 3'h0;
    end
    else begin
        q_out[2] <= cnt[3]^cnt[2];
        q_out[1] <= cnt[2]^cnt[1];
        q_out[0] <= cnt[1]^cnt[0];
    end
end

endmodule