`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/08/2024 12:35:16 PM
// Design Name: 
// Module Name: lock
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


module lock(
    input [3:0] in, clk , rst , output [6:0]out
    );
    reg [2:0] states,next;
    parameter [2:0] s0=0 , s1=1, s2=2, s3=3, s4=4;
    wire [3:0]btn;
    push_button_det p1(clk  , rst ,  in[3],btn[3]);
    push_button_det p1(clk  , rst ,  in[2],btn[2]);
    push_button_det p1(clk  , rst ,  in[1],btn[1]);
    push_button_det p1(clk  , rst ,  in[0],btn[0]);
     
    always @(*) begin
    case (states) 
    s0: if(btn==4'b1000)next =s1;
    else next=s0;
    s1:if(btn==4'b0001) next = s2;
    else if(btn==4'b0000) next=s1;
    else 
    next =s0;
    s2: if(btn==4'b0100) next = s3;else if(btn==4'b0000) next = s2;
    else 
    mext = s0;
    s3: if(btn== 4'b0010) next = s4;
    else if(btn==4'b0000)
    next =s3;
    s4:next =s4;
    endcase
    end
    always @(posedge clk , posedge rst) begin
   
   if(rst)
   states=s0;
   else
   states<=next;
   end
   assign out= states==s4?7'b1000001:7'b1110001;

    
endmodule
