`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2024 04:48:05 PM
// Design Name: 
// Module Name: SevenSegDec
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


module SevenSegDec(
    input [3:0]a, output [6:0] b
    );
    
    assign b[6] = !((a[2] & ~a[1]&~a[0]) || (~a[3] & ~a[2] & ~a[1] & a[0]));
    assign b[5] = !((a[2] & ~a[1] & a[0])|(a[2]&a[1]&~a[0]));
    assign b[4] = !((a[3] & a[0]) | (~a[2] & a[1] & ~a[0]));
    assign b[3] = !((a[2] & a[1] & a[0]) | (~a[3] & a[2] & ~a[1] & ~a[0]) | (~a[3] & ~a[2] & ~a[1] & a[0]));
    assign b[2] = !(a[0] | (~a[3] & a[2] & ~a[1]));
    assign b[1] = !((~a[2] & a[1]) | (a[1] & a[0]) | (~a[3] & ~a[2] & a[0]));
    assign b[0] = !((~a[3] & ~a[2] & ~a[1]) | (a[2] & a[1] & a[0]));
endmodule
