`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/22 19:50:38
// Design Name: 
// Module Name: no_comp_booth
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


module no_comp_booth(multiplicand,multiplier,product,clk,reset);
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
//assign tmp_prod=j0000+{j1000[25:0],6'b000000}+{s7,1'b0,s6,1'b0,s5,1'b0,s4,1'b0,s3,1'b0,s2,1'b0,s1,1'b0,s0};

//partial product accumulator
assign tp1 = j0+{j1,1'b0,s0};
assign tmp_prod[1:0] = tp1[1:0];

assign tp2 = tp1[BITWIDTH+5:2] + {j2,1'b0,s1};
assign tmp_prod[3:2] = tp2[1:0];

assign tp3 = tp2[BITWIDTH+5:2] + {j3,1'b0,s2};
assign tmp_prod[5:4] = tp3[1:0];

assign tp4 = tp3[BITWIDTH+5:2] + {j4,1'b0,s3};
assign tmp_prod[7:6] = tp4[1:0];

assign tp5 = tp4[BITWIDTH+5:2] + {j5,1'b0,s4};
assign tmp_prod[9:8] = tp5[1:0];

assign tp6 = tp5[BITWIDTH+5:2] + {j6,1'b0,s5};
assign tmp_prod[11:10] = tp6[1:0];

assign tp7 = tp6[BITWIDTH+5:2] + {j7,1'b0,s6};
assign tmp_prod[13:12] = tp7[1:0];

assign tp8 = tp7[BITWIDTH+5:2] + {j8[BITWIDTH-1],1'b0,s7};
assign tmp_prod[2*BITWIDTH-1:14] = tp8[BITWIDTH+1:0];

always@ (posedge clk or posedge reset or posedge clk)
  if(reset)  product <=0;
  else if(e0^e1)  product<={1'b1,~tmp_prod[2*BITWIDTH-2:0]+1'b1};
       else product <= tmp_prod;
endmodule
