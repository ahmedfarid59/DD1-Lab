`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2024 04:23:33 PM
// Design Name: 
// Module Name: addsub
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


module addsub(
    input [3:0] a,b ,input cin , output [3:0] s , output cout, input add
    );
    
    wire[3:0]w;
    assign w=add?b:~b+1;
    RCA4 r(a,w,cin,s,cout);
    
    
endmodule
