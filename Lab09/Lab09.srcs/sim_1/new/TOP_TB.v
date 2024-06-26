`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2024 12:54:28 PM
// Design Name: 
// Module Name: TOP_TB
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


module TOP_TB();
reg clk ,rst ;
wire [7:0] w_data ;
TOP dut(clk,rst , w_data);
initial begin 
clk=1;
forever #10 clk=~clk;
end
initial begin 
rst =1;
#20
rst=0;
end

endmodule
