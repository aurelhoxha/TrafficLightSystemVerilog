`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2016 12:43:27 AM
// Design Name: 
// Module Name: together
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


module together( input logic clk,
                     input logic reset,
                     input logic a,b,
                     output logic La2, La1,La0,Lb2,Lb1,Lb0);
wire temporary;
clocker takeClocker(.clk(clk),.reset(reset),.new_clock(temporary));
trafficLight(.clk(temporary),.reset(reset),.a(a),.b(b),.La2(La2),.La1(La1),.La0(La0),.Lb2(Lb2),.Lb1(Lb1),.Lb0(Lb0));
 
endmodule
