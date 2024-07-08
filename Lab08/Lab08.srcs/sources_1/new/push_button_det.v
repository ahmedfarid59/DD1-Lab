`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/08/2024 12:23:37 PM
// Design Name: 
// Module Name: push_button_det
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


module push_button_det(
    input clk , rst , in , output out
    );
    wire a, b;
    clkdiv #(25000)div(clk , rst , b);
    
    wire c;
    
    debouncer deb(b , rst , in, a);
    synchronizer sync(b, rst , a, c);
    rising_edge rise(b,rst , c , out);
    
    
    
endmodule
