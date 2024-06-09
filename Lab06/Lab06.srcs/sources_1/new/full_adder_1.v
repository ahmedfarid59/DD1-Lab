`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2024 03:50:01 PM
// Design Name: 
// Module Name: full_adder_1
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


module full_adder_1(
    input a , b ,cin, output s , cout
    );
    assign s=a^b^cin;
    assign cout = a&b|b&cin |a&cin;
    
endmodule
