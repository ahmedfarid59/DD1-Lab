`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2024 02:31:56 PM
// Design Name: 
// Module Name: counterModN_TB
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


module counterModN_TB();
reg clk, rst, en;
wire [3:0] count;
counterModN #(4,12) DUT (clk, rst, en, count);
initial begin
clk = 0;
forever #10 clk=~clk;
end
initial begin
 en = 1;
rst=1;
#100
rst=0;
#100
en=0;
#100
en = 1;
end
endmodule
