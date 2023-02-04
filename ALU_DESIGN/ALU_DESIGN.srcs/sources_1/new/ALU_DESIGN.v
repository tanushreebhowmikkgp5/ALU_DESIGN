`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2023 12:18:00 PM
// Design Name: 
// Module Name: ALU_DESIGN
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


module ALU_DESIGN(A,B,OP_CODE,ALU_OUT);
input [3:0]A,B;
input [2:0] OP_CODE;
output reg [4:0]ALU_OUT;
always@(*)
 
begin
  case(OP_CODE)
  3'b000:begin ALU_OUT=0 ;end
  3'b001:begin ALU_OUT=A+B; end
  3'b010:begin ALU_OUT=A-B ;end
  3'b011:begin ALU_OUT=A&B; end
  3'b100:begin ALU_OUT=A|B ;end
  3'b101:begin ALU_OUT=~A;end
  3'b110:begin ALU_OUT=~B ;end
   3'b111:begin ALU_OUT=A^B; end
   default: ALU_OUT=4'bxxxx;
   endcase
   
  
  
end 
endmodule
