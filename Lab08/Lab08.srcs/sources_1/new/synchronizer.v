`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/08/2024 12:06:18 PM
// Design Name: 
// Module Name: synchronizer
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


module synchronizer(
    input clk , rst , sig ,output reg sig1
    );
    reg meta ;
    always @(posedge clk, posedge rst) begin 
    if(rst) begin
    meta=0;
    sig1=0;
    end
    else begin
    meta<=sig;
    sig1<=meta;
    
    end
    
    end
    
endmodule
