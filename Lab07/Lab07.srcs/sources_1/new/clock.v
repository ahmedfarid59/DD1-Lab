`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2024 01:33:13 PM
// Design Name: 
// Module Name: clock
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


module clock(
    input clk , rst , output [13:0] out
    );
    mod10count sec1(clk,rst, 1 , out[3:0]);
    mod6count sec2(clk ,rst,out[3:0]==9, out[6:4]);
    mod10count min1(clk , rst , out[6:0]==99, out[10:7]);
    mod6count min2(clk,rst,out[10:0]==11'b10011011001, out[13:11]);
    
endmodule
