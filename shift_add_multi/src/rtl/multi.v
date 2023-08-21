module multi (
    input clk,
    input n_rst,
    input [3:0] multiplier,
    input [3:0] multiplicand,
    input start,
    output [3:0] count,
    output reg fin,
    output reg [7:0] product
);

reg [3:0] plier;
reg [7:0] plicand;
//reg [7:0] product;
reg [3:0] cnt;

assign count = cnt;

always @(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
    product <= 8'h0;
    plier <= multiplier;
    plicand <= multiplicand;
    fin <= 1'b0;
    cnt <= 4'b0;
    end

    
    else if (cnt == 4'h3) begin
        fin <= 1'b1;
        cnt <= 4'h0;
    end
    else if (start == 1'b1) begin
        product <= (plier[0] == 1'b1)? (product + plicand) : product;
        plicand <= plicand << 1;
        plier <= plier >> 1;
        cnt <= cnt + 4'b1;
    end
    else begin
        product <= product;
        plicand <= multiplicand;
        plier <= multiplier;
    end
end

endmodule

/*
always @(posedge clk or negedge n_rst) begin
    if (!n_rst)
    product <= 8'h0;
    else if((start == 1'b1) && (multiplier[0] == 1'b1))begin
        product <= product + plicand;
    end
    else
        product <= product;
end

always @(posedge clk or negedge n_rst)begin
    if (!n_rst)
    plier <= multiplier;
    else if(start == 1'b1)begin
        plier <= multiplier >> 1;
    end
    else
        plier <= multiplier;
end

always @(posedge clk or negedge n_rst)begin
    if (!n_rst)
    plicand <= multiplicand;
    else if(start == 1'b1)begin
        plicand <= multiplicand << 1;
    end
    else
        plicand <= multiplicand;
end
*/