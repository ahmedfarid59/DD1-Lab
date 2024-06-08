`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2024 02:19:39 PM
// Design Name: 
// Module Name: counterModN
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


module counterModN #(parameter x=8 , n= 10) (input clk , rst , en , output reg [x-1:0] count

    );
always @(posedge clk , posedge rst) begin
if ( rst == 1)
count = 0;
else if(en==1) begin
if(count < n-1)
count=count+1;
else
count =0;
end
end
endmodule

