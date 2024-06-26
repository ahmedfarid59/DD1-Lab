`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2024 12:34:20 PM
// Design Name: 
// Module Name: TOP
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


module TOP(
    input clk , rst ,  output [7:0] w_data
    );
    wire [5:0] count;
    wire [25:0] ins;
    counterModN#(6, 6) pc(clk , rst,1 , count);
    ROM rom(count , ins );
    wire [7:0] a ,b,r ;
    regFile rf (clk , rst ,  a, b , w_data , ins[25:22] , ins[21:18], ins[17:14], ins[13]);
    ALU alu(a,b , r,ins[10:8]);
    assign w_data=ins[12] ? ins[7:0]:r;
endmodule
