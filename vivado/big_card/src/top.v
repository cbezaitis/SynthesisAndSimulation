`timescale  1 ns/1 ps

module top
(
    input   wire                clk_p,
    input   wire                clk_n,
    /*port*/
    output  reg  [03:00]        led
);
reg[31:0] timer_cnt; 
//============================================================
// LED 
//=============================================================

wire clk;
IBUFDS #(.DIFF_TERM("TRUE")) ibufds_inst (
    .I(clk_p),
    .IB(clk_n),
    .O(clk)
);


always@(posedge clk) 
begin
    if(timer_cnt >= 32'd49_999_999) 
    begin
        led <= ~led; 
        timer_cnt <= 32'd0; 
    end
    else
    begin
        led <= led; 
        timer_cnt <= timer_cnt + 32'd1; 
    end
end
endmodule
