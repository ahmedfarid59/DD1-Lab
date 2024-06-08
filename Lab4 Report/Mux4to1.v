`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2024 01:18:27 PM
// Design Name: 
// Module Name: Mux4to1
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


module Mux4to1(
    input [3:0] in, input [1:0] s, output out
);
wire w0,w1;

Mux2to1 m1(in[0] , in[1], s[0], w0);
Mux2to1 m2(in[2] , in[3] ,s[0], w1);
Mux2to1 m3(w0, w1 , s[1] , out);

endmodule
