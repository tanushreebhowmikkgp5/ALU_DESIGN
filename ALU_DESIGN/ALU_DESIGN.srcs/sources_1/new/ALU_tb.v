`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2023 01:06:08 PM
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb();
reg [3:0]A,B;
reg[2:0] OP_CODE;
wire[4:0]ALU_OUT;
ALU_DESIGN a1(A,B,OP_CODE,ALU_OUT);
 
  initial
   begin
      A=4'b0011;B=4'b1011;OP_CODE=3'b000;
      #10 OP_CODE=3'b001;
       #10 OP_CODE=3'b010;
            #10 OP_CODE=3'b011;
             #10 OP_CODE=3'b100;
                  #10 OP_CODE=3'b101;
                   #10 OP_CODE=3'b110;
                        #10 OP_CODE=3'b111;
                         #10 OP_CODE=3'b000;
                             
                        
                        
   end
   initial
   #100 $finish;
endmodule
