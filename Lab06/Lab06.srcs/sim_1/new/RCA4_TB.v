`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2024 04:01:57 PM
// Design Name: 
// Module Name: RCA4_TB
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


module RCA4_TB();

reg [3:0] a;
reg [3:0] b;
reg cin;
wire[3:0]s;
wire cout;
wire [3:0] ref_s;
wire ref_cout, err;
RCA4 DUT(a, b, cin, s, cout);
assign {ref_cout, ref_s} = a + b + cin;
assign err = (ref_s != s) || (ref_cout != cout);
integer i;
initial begin
for ( i = 0; i < 512; i = i + 1 ) begin
 {a, b, cin} = i; #10
 // every 10 ns set x, y, cin to the binary rep. of i
 if (err == 1)
 $display("Input combination %d failed.", i);
end
end

endmodule
