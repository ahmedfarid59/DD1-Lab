`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2024 04:18:19 PM
// Design Name: 
// Module Name: RCA8
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


module RCA8(
    input [7:0] a, b ,input cin , output [7:0] s, output cout
    );
    wire[6:0] w;
    genvar i;
    generate
        full_adder_1 f1(a[0],b[0], cin , s[0], w[0]);
        for (i =1;i<7; i=i+1)
        full_adder_1 f(a[i],b[i],w[i-1],s[i],w[i]);
        full_adder_1 h(a[7],b[7],w[6],s[7],cout);
        endgenerate
endmodule
