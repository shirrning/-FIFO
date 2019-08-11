`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/22 20:22:20
// Design Name: 
// Module Name: comp_booth
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


module comp_booth(multiplicand,multiplier,product,clk,reset);

parameter BITWIDTH =  16;

input clk,reset;
input  [BITWIDTH-1:0] multiplier;
input  [BITWIDTH-1:0] multiplicand;
output [2*BITWIDTH-1:0] product;

reg    [2*BITWIDTH-1:0] product;
reg    [15:0] multiplicand1,multiplier1;
wire    [8:0] ss;

wire     a,e0,e1;
wire     s0,s1,s2,s3,s4,s5,s6,s7,s8;
wire    [2*BITWIDTH-1:0] tmp_prod;
wire    [BITWIDTH+3:0] tp8;
wire    [BITWIDTH+5:0] tp1,tp2,tp3,tp4,tp5,tp6,tp7;
wire    [BITWIDTH+3:0] j0;
wire    [BITWIDTH+2:0] j1,j2,j3,j4,j5,j6;
wire    [BITWIDTH+1:0] j7;
wire    [BITWIDTH:0] j8;

assign e0=multiplicand[15];
assign e1=multiplier[15];
assign a= e0|e1;

always@ (posedge clk or posedge reset or negedge clk)
begin
  if(reset)
      product <=0;
  else 
    begin
      if(a)
        begin
          if(multiplicand[15])   multiplicand1 <= ~multiplicand+1'b1;
          else  multiplicand1 <= multiplicand;

          if(multiplier[15]) multiplier1 <= ~multiplier+1'b1;
          else  multiplier1 <= multiplier;
        end
      else   
       {multiplicand1,multiplier1}<={multiplicand,multiplier};
    end
 end
   
  
//partial product 
bfj_9      j_9(
              .multiplicand1(multiplicand1),
              .multiplier1(multiplier1),
              .s0(s0),.s1(s1),.s2(s2),.s3(s3),.s4(s4),
              .s5(s5),.s6(s6),.s7(s7),.s8(s8),
              .j0(j0),.j1(j1),
              .j2(j2),.j3(j3),
              .j4(j4),.j5(j5),
              .j6(j6),.j7(j7),
              .j8(j8)
              );

//3:2  yasuo1:9->6

wire     [21:0] j0_s,j1_s;
wire     [19:0] j0_c,j1_c,j2_s;
wire     [17:0] j2_c;

yasuo1     y9_6(
              .j0(j0),.j1(j1),
              .j2(j2),.j3(j3),
              .j4(j4),.j5(j5),
              .j6(j6),.j7(j7),
              .j8(j8),
              .j0_s(j0_s),.j0_c(j0_c),
              .j1_s(j1_s),.j1_c(j1_c),
              .j2_s(j2_s),.j2_c(j2_c)
              );
              
//3:2  yasuo2:6->4
wire    [23:0] j00_s,j00_c;
wire    [22:0] j10_s;
wire    [19:0] j10_c;
yasuo2     y6_4(
              .j00(j0_s),.j01(j0_c),
              .j10(j1_s),.j11(j1_c),
              .j20(j2_s),.j21(j2_c),
              .j00_s(j00_s),.j00_c(j00_c),
              .j10_s(j10_s),.j10_c(j10_c)
              );
              
              
//3:2   yasuo3:4->3
wire    [28:0] j20_s;
wire    [26:0] j20_c;
yasuo3     y4_3(
              .j000(j00_s),.j100(j00_c),
              .j200(j10_s),
              .j20_s(j20_s),.j20_c(j20_c)
              );
              
              
//3:2   yasuo4:3->2
wire    [31:0] j0000;
wire    [26:0] j1000;
yasuo4     y3_2(
               .j10(j20_s),
               .j20(j20_c),.j30(j10_c),
               .j0000(j0000),.j1000(j1000)
               );
               
assign tmp_prod=j0000+{j1000[25:0],6'b000000}+{s7,1'b0,s6,1'b0,s5,1'b0,s4,1'b0,s3,1'b0,s2,1'b0,s1,1'b0,s0};

always@ (posedge clk or posedge reset or posedge clk)
  if(reset)  product <=0;
  else if(e0^e1)  product<={1'b1,~tmp_prod[2*BITWIDTH-2:0]+1'b1};
       else product <= tmp_prod;
endmodule