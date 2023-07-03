module led(
    clk,
    n_rst,
    led
);

input clk;
input n_rst;
output [3:0] led;

reg [3:0] led;
reg [7:0] count;


always@(posedge clk or negedge n_rst)
    if(!n_rst) begin
        count <= 8'b0000_0000;
    end
    else begin
        if(count > 1 && count < 11) begin
            count <= count + 1'b1;
        end
        else if (count == 11) begin
            count <= 1'b0;
        end
    end

always@(posedge clk or negedge n_rst)
    if(!n_rst) begin
        led <=  4'b0;
    end
    else begin
        if(count > 1 && count < 11) begin
            led <= led + 1'b1;
        end
        else if (count == 11) begin
            led <= 4'b0;
        end
    end

endmodule