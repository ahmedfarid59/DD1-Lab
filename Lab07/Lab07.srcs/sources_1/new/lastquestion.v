`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2024 07:22:30 PM
// Design Name: 
// Module Name: lastquestion
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


module lastquestion(
    input [7:0] in , input clk , rst ,output reg  [7:0] out 
    );
    always @(posedge clk, posedge rst ) begin
    
    if (rst==1)
    out=0;
    else begin
    out=+in;end
    end
endmodule

