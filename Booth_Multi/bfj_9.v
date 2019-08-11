`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/22 20:10:38
// Design Name: 
// Module Name: bfj_9
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


module bfj_9(multiplicand1,multiplier1,s0,s1,s2,s3,s4,s5,s6,s7,s8,j0,j1,j2,j3,j4,j5,j6,j7,j8);

parameter BITWIDTH =  16;
input   [BITWIDTH-1:0]multiplicand1,multiplier1;
output  s0,s1,s2,s3,s4,s5,s6,s7,s8;
output  [BITWIDTH+3:0] j0;
output  [BITWIDTH+2:0] j1,j2,j3,j4,j5,j6;
output  [BITWIDTH+1:0] j7;
output  [BITWIDTH:0] j8;

wire    [BITWIDTH:0] pp0,pp1,pp2,pp3,pp4,pp5,pp6,pp7,pp8;
wire     s0,s1,s2,s3,s4,s5,s6,s7,s8;
wire    [BITWIDTH+3:0] j0;
wire    [BITWIDTH+2:0] j1,j2,j3,j4,j5,j6;
wire    [BITWIDTH+1:0] j7;
wire    [BITWIDTH:0] j8;

booth_recoder #(BITWIDTH) br0(
     .multiplicand(multiplicand1),
     .code({multiplier1[1:0],1'b0}),
     .pp(pp0),
     .s(s0)
     );

booth_recoder #(BITWIDTH) br1(
     .multiplicand(multiplicand1),
     .code(multiplier1[3:1]),
     .pp(pp1),
     .s(s1)
     );

booth_recoder #(BITWIDTH) br2(
     .multiplicand(multiplicand1),
     .code(multiplier1[5:3]),
     .pp(pp2),
     .s(s2)
     );

booth_recoder #(BITWIDTH) br3(
     .multiplicand(multiplicand1),
     .code(multiplier1[7:5]),
     .pp(pp3),
     .s(s3)
     );

booth_recoder #(BITWIDTH) br4(
     .multiplicand(multiplicand1),
     .code(multiplier1[9:7]),
     .pp(pp4),
     .s(s4)
     );

booth_recoder #(BITWIDTH) br5(
     .multiplicand(multiplicand1),
     .code(multiplier1[11:9]),
     .pp(pp5),
     .s(s5)
     );
     
booth_recoder #(BITWIDTH) br6(
     .multiplicand(multiplicand1),
     .code(multiplier1[13:11]),
     .pp(pp6),
     .s(s6)
     );

booth_recoder #(BITWIDTH) br7(
     .multiplicand(multiplicand1),
     .code(multiplier1[15:13]),
     .pp(pp7),
     .s(s7)
     );


booth_recoder #(BITWIDTH) br8(
     .multiplicand(multiplicand1),
     .code({2'b00,multiplier1[15]}),
     .pp(pp8),
     .s(s8)
     );
assign j0 = {~s0,s0,s0,pp0};
assign j1 = {1'b1,~s1,pp1};
assign j2 = {1'b1,~s2,pp2};
assign j3 = {1'b1,~s3,pp3};
assign j4 = {1'b1,~s4,pp4};
assign j5 = {1'b1,~s5,pp5};
assign j6 = {1'b1,~s6,pp6};
assign j7 = {~s7,pp7};
assign j8 = pp8[15:0];

endmodule
