`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2026 01:25:49 PM
// Design Name: 
// Module Name: baud_16tick_gen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module baud_16tick_gen#(parameter CLK_FREQ = 125_000_000,
                        parameter BAUD = 115_200)(
    input clk,
    output reg tick
    );
    
    localparam integer DIV16 = CLK_FREQ / (BAUD * 16);
    localparam integer CNT_WIDTH = $clog2(DIV16);
    
    reg [CNT_WIDTH - 1:0] cnt;
    always @(posedge clk) begin
        if(cnt == DIV16-1) begin
            cnt <= 0;
            tick <= 1'b1;
        end else begin
            cnt <= cnt + 1;
            tick <= 1'b0;
        end
    end
endmodule
