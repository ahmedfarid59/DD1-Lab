`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2024 12:23:13 PM
// Design Name: 
// Module Name: ROM
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


module ROM (input [5:0] addr, output [33:0] data_out);
reg [33:0] mem [0:63];
assign data_out = mem[addr];
initial begin
 mem[0]= 34'bXXXXXXXX_XXXX_XXXX_0000_1_1_X_XXX_01111100;
 mem[1]= 34'bXXXXXXXX_XXXX_XXXX_0001_1_1_X_XXX_00011100;
 mem[2]= 34'bXXXXXXXX_XXXX_XXXX_0010_1_1_X_XXX_11000111;
 mem[3]= 34'bXXXXXXXX_0000_0001_1010_1_0_0_100_XXXXXXXX;
 mem[4]= 34'bXXXXXXXX_0000_0010_1011_1_0_0_110_XXXXXXXX;
 mem[5]= 34'bXXXXXXXX_1010_1011_1100_1_0_0_000_XXXXXXXX;
 mem[6]= 34'b10001010_1100_XXXX_0111_1_0_1_011_XXXXXXXX;
 
end
endmodule
