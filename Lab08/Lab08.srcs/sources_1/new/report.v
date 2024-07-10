`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2024 04:17:20 PM
// Design Name: 
// Module Name: report
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


module report(
input [10:0] in, clk , rst , output [6:0]out
    );
    reg [2:0] states,next;
    parameter [2:0] s0=0 , s1=1, s2=2, s3=3, s4=4, s5 = 5;
    
    
    always @(in[10]) begin
    if(in[10])
    case (states) 
    s0:if(in[9:0]==1) next=s1 ;else next=s0;
    s1: if(in[1:0]==1) next=s2 ;else next=s0;
    s2: if(in[9:0]==2) next=s3; else next=s0;
    s3: if(in[9:0]==6)next=s4; else next=s0;
    s4: if(in[9:0]==5) next=s5; else next=s0;
    s5: next=s5;
    endcase
    end
    always @(posedge clk , posedge rst) begin
   
   if(rst)
   states=s0;
   else
   states<=next;
   end
   assign out= states==s5?7'b1000001:7'b1110001;

    
endmodule