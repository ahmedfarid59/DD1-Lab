`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2024 04:20:41 PM
// Design Name: 
// Module Name: CSA8_TB
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


module CSA8_TB();
reg [7:0] a;
reg [7:0] b;
reg cin;
wire[7:0]s;
wire cout;
wire [7:0] ref_s;
wire ref_cout, err;
CSA8 DUT(a, b, cin, s, cout);
assign {ref_cout, ref_s} = a + b + cin;
assign err = (ref_s != s) || (ref_cout != cout);
integer i;
initial begin
for ( i = 0; i < 131072; i = i + 1 ) begin
 {a, b, cin} = i; #1
 // every 10 ns set x, y, cin to the binary rep. of i
 if (err == 1)
 $display("Input combination %d failed.", i);
end
end
endmodule
