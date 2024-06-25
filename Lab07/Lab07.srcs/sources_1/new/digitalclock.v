`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2024 01:57:49 PM
// Design Name: 
// Module Name: digitalclock
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


module digitalclock(
    input clk, rst ,output [6:0] segments, output [3:0] anode_active
    );
    wire [13:0] out;
    wire clk_out;
    reg [3:0] r;
    clock c(clk,rst ,out);
    wire [1:0] sel;
    counterModN #(2,4) count(clk_out,rst,1,sel);
    clkdiv #(250000) d(clk,rst, clk_out);
    always @(*) begin 
    case (sel)
    0: r=out[3:0];
    1: r= {1'b0, out[6:4]};
    2: r=out[10:7];
    3: r={1'b0,out[13:11]};
    endcase
    end
    SevenSegDecWithEn  seven(sel , r,segments, anode_active );
    
endmodule
