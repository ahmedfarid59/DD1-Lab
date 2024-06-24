`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2024 01:22:14 PM
// Design Name: 
// Module Name: mod10count
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


module mod10count(
    input clk , rst , en , output [3:0] count
    );
    wire clk_out ;
    clkdiv d(clk, rst , clk_out);
    counterModN #(4 ,10) m(clk_out , rst , en , count);
endmodule
