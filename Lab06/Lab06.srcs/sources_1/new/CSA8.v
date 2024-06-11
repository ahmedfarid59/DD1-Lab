`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2024 04:10:33 PM
// Design Name: 
// Module Name: CSA8
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


module CSA8(
    input [7:0] a, b ,input cin , output [7:0] s, output cout
);

RCA4 r1(a[3:0],b[3:0],cin,s[3:0],w1);
wire [3:0] w2,w3;
RCA4 r2(a[7:4],b[7:4],0,w2,w4);
RCA4 r3(a[7:4], b[7:4],1,w3,w5);
assign s[7:4]= w1?w3:w2;
assign cout =w1?w5:w4;

endmodule
