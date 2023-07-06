module binary(
    input clk,
    input n_rst,
    input down,
    output [3:0] q_out
);

    reg [3:0] q;

    assign q_out = q;

    always @(posedge clk or negedge n_rst)
    begin
        if(!n_rst)
            q <= 4'h0;
        else if(down)
            q <= q - 4'h1;
        else
            q <= q + 4'h1;
    end

endmodule