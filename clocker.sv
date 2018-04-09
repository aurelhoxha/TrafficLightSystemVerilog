`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2016 12:38:12 AM
// Design Name: 
// Module Name: clocker
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


module clocker(input logic clk, 
                    input logic reset,
                    output reg new_clock
                    );
    
    int NUMBER = 300000000;
    int count = 0;
    
    always @(posedge clk)
    if( count == NUMBER )
        begin
            count = 0;
            new_clock = 1'b1;
        end
   else
     begin
        count = count + 1;
        new_clock = 1'b0;
      end
 
endmodule
