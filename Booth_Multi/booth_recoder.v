`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/22 20:12:07
// Design Name: 
// Module Name: booth_recoder
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


module booth_recoder(
     multiplicand,
     code,       
     pp,          
     s           
     );

parameter BITWIDTH = 16;

input  [BITWIDTH-1:0] multiplicand;
input  [2:0] code;

output [BITWIDTH:0] pp;
output s;

reg    [BITWIDTH:0] pp;
reg   s;

always @ (multiplicand or code)
  case(code) 
  3'b000:pp = {(BITWIDTH+1){1'b0}};//+0
  3'b001:pp = {multiplicand[15],multiplicand}; //+M
  3'b010:pp = {multiplicand[15],multiplicand}; //+M
  3'b011:pp = {multiplicand,1'b0}; //+2M
  3'b100:pp = {~multiplicand,1'b1};//-2M
  3'b101:pp = {~multiplicand[15],(~multiplicand)};//-M
  3'b110:pp = {~multiplicand[15],(~multiplicand)};//-M
  3'b111:pp = {(BITWIDTH+1){1'b1}};//-0 
  endcase
  
always @ (multiplicand or code)
  case(code[2]) 
  1'b0:s = 1'b0;//+0,+M,+2M
  1'b1:s = 1'b1;//-2M,-M,-0
  endcase

endmodule
