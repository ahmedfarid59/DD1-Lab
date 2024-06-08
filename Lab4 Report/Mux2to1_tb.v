`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2024 01:07:15 PM
// Design Name: 
// Module Name: Mux2to1_tb
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


module Mux2to1_tb();
reg in0;
reg in1;
reg sel;
wire out;
Mux2to1 dut(in0 , in1 , sel , out);

initial begin
in0=0;
in1 =0;
sel=0;
#100
in0=0;
in1 =1;
sel=0;
#100
in0=1;
in1 =0;
sel=1;
#100
in0=1;
in1 =1;
sel=1;
#100
in0=1;
in1 =0;
sel=0;
#100
in0=0;
in1 =1;
sel=1;
end




endmodule
