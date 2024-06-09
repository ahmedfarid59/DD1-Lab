`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2024 03:55:27 PM
// Design Name: 
// Module Name: RCA4
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


module RCA4(
    input [3:0] a,b ,input cin , output [3:0] s , output cout
    );
    wire w1,w2,w3;
    full_adder_1 f1(a[0],b[0] ,cin,s[0],w1);
    full_adder_1 f2(a[1],b[1] ,w1,s[1],w2);
    full_adder_1 f3(a[2],b[2] ,w2,s[2],w3);
    full_adder_1 f4(a[3],b[3] ,w3,s[3],cout);
endmodule
