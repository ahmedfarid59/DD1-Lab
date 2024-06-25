`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2024 07:01:11 PM
// Design Name: 
// Module Name: updowncounter
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


module updowncounter #( parameter x=3) (
    input clk , rst , inc , updown , output [x-1:0] out
    );
    reg out;
    always @(posedge clk, posedge  rst) begin
    if(rst ) out =0;
    else begin
    if(updown ) begin
    if(inc ==1)
    out =- 2;
    else out=-1;
    end
    else
    begin
    if(inc==1)
    out=+2;
    else out=+1;
    end
    end
    end
endmodule
