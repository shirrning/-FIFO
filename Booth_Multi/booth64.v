`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/22 21:16:22
// Design Name: 
// Module Name: booth64
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


module booth64(Y,X,SUM);
 
 input [31:0] Y;
 input [31:0] X;
 output [63:0] SUM;
 
 wire [32:0] X1,X2,X3,X4;
 wire [32:0]   X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16;
  wire 			sign1,sign2,sign3,sign4,sign5,sign6,sign7,sign8,sign9,sign10,sign11,sign12,sign13,sign14,sign15,sign16;
  wire 			E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11,E12,E13,E14,E15,E16;
 
 wire [63:0] sum1,sum2;
  wire [63:0] sum3,sum4;
 wire [63:0] sum1_sum2,sum3_sum4;
 wire [63:0] sum1sum2_sum3sum4;
 
  wire [63:0] Coex1,Coin1;
  wire [63:0] Coex2,Coex3,Coex4;
 wire [63:0] Coin2,Coin3,Coin4;
 
  wire [63:0] Coex2_1,Coex2_2;
 wire [63:0] Coin2_1,SUM1;
  wire [63:0] Coin2_2;
   wire [63:0] Coex3_1;
  wire [63:0] Coin3_1,Coin3_2,Coex3_2,sum_temp;
 wire carry1,carry2,carry3,carry4,carry5,carry6,carry7,carry8,carry9,carry10,carry11;
 
 

 
 
 generate_PPi  g1(X,{Y[1:0],1'b0},X1,sign1,E1);
 generate_PPi  g2(X,Y[3:1],X2,sign2,E2);
 generate_PPi  g3(X,Y[5:3],X3,sign3,E3);
 generate_PPi  g4(X,Y[7:5],X4,sign4,E4);
 generate_PPi  g5(X,Y[9:7],X5,sign5,E5);
 generate_PPi  g6(X,Y[11:9],X6,sign6,E6);
 generate_PPi  g7(X,Y[13:11],X7,sign7,E7);
 generate_PPi  g8(X,Y[15:13],X8,sign8,E8);
 generate_PPi  g9(X,Y[17:15],X9,sign9,E9);
 generate_PPi  g10(X,Y[19:17],X10,sign10,E10);
 generate_PPi  g11(X,Y[21:19],X11,sign11,E11);
 generate_PPi  g12(X,Y[23:21],X12,sign12,E12);
 generate_PPi  g13(X,Y[25:23],X13,sign13,E13);
 generate_PPi  g14(X,Y[27:25],X14,sign14,E14);
 generate_PPi  g15(X,Y[29:27],X15,sign15,E15);
 generate_PPi  g16(X,Y[31:29],X16,sign16,E16);
 
 /******************************************************************************************
                                        ??????1
 ******************************************************************************************/
 compressor4_2  c1_0(X1[0],sign1,1'b0, 1'b0, 1'b0,      Coin1[0],Coex1[0],sum1[0]);
 compressor4_2  c1_1(X1[1],1'b0,    1'b0, 1'b0, Coin1[0],Coin1[1],Coex1[1],sum1[1]);
 compressor4_2  c1_2(X1[2],X2[0],1'b0,sign2,Coin1[1],Coin1[2],Coex1[2],sum1[2]);
 compressor4_2  c1_3(X1[3],X2[1],1'b0,1'b0,Coin1[2],Coin1[3],Coex1[3],sum1[3]);
 compressor4_2  c1_4(X1[4],X2[2],X3[0],sign3,Coin1[3],Coin1[4],Coex1[4],sum1[4]);
 compressor4_2  c1_5(X1[5],X2[3],X3[1],1'b0,Coin1[4],Coin1[5],Coex1[5],sum1[5]);
 compressor4_2  c1_6(X1[6],X2[4],X3[2],X4[0],Coin1[5],Coin1[6],Coex1[6],sum1[6]);//s4???
 compressor4_2  c1_7(X1[7],X2[5],X3[3],X4[1],Coin1[6],Coin1[7],Coex1[7],sum1[7]);
 compressor4_2  c1_8(X1[8],X2[6],X3[4],X4[2],Coin1[7],Coin1[8],Coex1[8],sum1[8]);
 compressor4_2  c1_9(X1[9],X2[7],X3[5],X4[3],Coin1[8],Coin1[9],Coex1[9],sum1[9]);
 compressor4_2  c1_10(X1[10],X2[8],X3[6],X4[4],Coin1[9],Coin1[10],Coex1[10],sum1[10]);
 compressor4_2  c1_11(X1[11],X2[9],X3[7],X4[5],Coin1[10],Coin1[11],Coex1[11],sum1[11]);
 compressor4_2  c1_12(X1[12],X2[10],X3[8],X4[6],Coin1[11],Coin1[12],Coex1[12],sum1[12]);
 compressor4_2  c1_13(X1[13],X2[11],X3[9],X4[7],Coin1[12],Coin1[13],Coex1[13],sum1[13]);
 compressor4_2  c1_14(X1[14],X2[12],X3[10],X4[8],Coin1[13],Coin1[14],Coex1[14],sum1[14]);
 compressor4_2  c1_15(X1[15],X2[13],X3[11],X4[9],Coin1[14],Coin1[15],Coex1[15],sum1[15]);
 compressor4_2  c1_16(X1[16],X2[14],X3[12],X4[10],Coin1[15],Coin1[16],Coex1[16],sum1[16]);
 compressor4_2  c1_17(X1[17],X2[15],X3[13],X4[11],Coin1[16],Coin1[17],Coex1[17],sum1[17]);
 compressor4_2  c1_18(X1[18],X2[16],X3[14],X4[12],Coin1[17],Coin1[18],Coex1[18],sum1[18]);
 compressor4_2  c1_19(X1[19],X2[17],X3[15],X4[13],Coin1[18],Coin1[19],Coex1[19],sum1[19]);
 compressor4_2  c1_20(X1[20],X2[18],X3[16],X4[14],Coin1[19],Coin1[20],Coex1[20],sum1[20]);
 compressor4_2  c1_21(X1[21],X2[19],X3[17],X4[15],Coin1[20],Coin1[21],Coex1[21],sum1[21]);
 compressor4_2  c1_22(X1[22],X2[20],X3[18],X4[16],Coin1[21],Coin1[22],Coex1[22],sum1[22]);
 compressor4_2  c1_23(X1[23],X2[21],X3[19],X4[17],Coin1[22],Coin1[23],Coex1[23],sum1[23]);
 compressor4_2  c1_24(X1[24],X2[22],X3[20],X4[18],Coin1[23],Coin1[24],Coex1[24],sum1[24]);
 compressor4_2  c1_25(X1[25],X2[23],X3[21],X4[19],Coin1[24],Coin1[25],Coex1[25],sum1[25]);
 compressor4_2  c1_26(X1[26],X2[24],X3[22],X4[20],Coin1[25],Coin1[26],Coex1[26],sum1[26]);
 compressor4_2  c1_27(X1[27],X2[25],X3[23],X4[21],Coin1[26],Coin1[27],Coex1[27],sum1[27]);
 compressor4_2  c1_28(X1[28],X2[26],X3[24],X4[22],Coin1[27],Coin1[28],Coex1[28],sum1[28]);
 compressor4_2  c1_29(X1[29],X2[27],X3[25],X4[23],Coin1[28],Coin1[29],Coex1[29],sum1[29]);
 compressor4_2  c1_30(X1[30],X2[28],X3[26],X4[24],Coin1[29],Coin1[30],Coex1[30],sum1[30]);
 compressor4_2  c1_31(X1[31],X2[29],X3[27],X4[25],Coin1[30],Coin1[31],Coex1[31],sum1[31]);
 compressor4_2  c1_32(X1[32],X2[30],X3[28],X4[26],Coin1[31],Coin1[32],Coex1[32],sum1[32]);
 compressor4_2  c1_33(~E1,   X2[31],X3[29],X4[27],Coin1[32],Coin1[33],Coex1[33],sum1[33]);
 compressor4_2  c1_34(~E1,   X2[32],X3[30],X4[28],Coin1[33],Coin1[34],Coex1[34],sum1[34]);
 compressor4_2  c1_35(E1,    E2,    X3[31],X4[29],Coin1[34],Coin1[35],Coex1[35],sum1[35]);
 compressor4_2  c1_36(1'b0,     1'b1,     X3[32],X4[30],Coin1[35],Coin1[36],Coex1[36],sum1[36]);
 compressor4_2  c1_37(1'b0,     1'b0,     E3,    X4[31],Coin1[36],Coin1[37],Coex1[37],sum1[37]);
 compressor4_2  c1_38(1'b0,     1'b0,     1'b1,     X4[32],Coin1[37],Coin1[38],Coex1[38],sum1[38]);
 compressor4_2  c1_39(1'b0,     1'b0,     1'b0,     E4,    Coin1[38],Coin1[39],Coex1[39],sum1[39]);
 compressor4_2  c1_40(1'b0,     1'b0,     1'b0,     1'b1,     Coin1[39],Coin1[40],Coex1[40],sum1[40]);
 compressor4_2  c1_41(1'b0,     1'b0,     1'b0,     1'b0,     Coin1[40],Coin1[41],Coex1[41],sum1[41]);
 compressor4_2  c1_42(1'b0,     1'b0,     1'b0,     1'b0,     Coin1[41],Coin1[42],Coex1[42],sum1[42]);
 
 assign sum1[63:43]=0;
 assign Coex1[63:43]=0;
 /******************************************************************************************
                                        ??????2
 ******************************************************************************************/


 compressor4_2  c2_00(sign4,1'b0,1'b0, 1'b0,   1'b0,      Coin2[63],Coex2[6],sum2[6]);
 compressor4_2  c2_000(1'b0,    1'b0,1'b0, 1'b0, Coin2[63],Coin2[62],Coex2[7],sum2[7]); 
 
 compressor4_2  c2_0(X5[0],sign5,1'b0, 1'b0, 1'b0,      Coin2[0],Coex2[8],sum2[8]);
 compressor4_2  c2_1(X5[1],    1'b0,1'b0, 1'b0, Coin2[0],Coin2[1],Coex2[9],sum2[9]);
 compressor4_2  c2_2(X5[2],X6[0],sign6,1'b0,Coin2[1],Coin2[2],Coex2[10],sum2[10]);
 compressor4_2  c2_3(X5[3],X6[1],1'b0,1'b0,Coin2[2],Coin2[3],Coex2[11],sum2[11]);
 compressor4_2  c2_4(X5[4],X6[2],X7[0],sign7,Coin2[3],Coin2[4],Coex2[12],sum2[12]);
 compressor4_2  c2_5(X5[5],X6[3],X7[1],1'b0,Coin2[4],Coin2[5],Coex2[13],sum2[13]);
 compressor4_2  c2_6(X5[6],X6[4],X7[2],X8[0],Coin2[5],Coin2[6],Coex2[14],sum2[14]);
 compressor4_2  c2_7(X5[7],X6[5],X7[3],X8[1],Coin2[6],Coin2[7],Coex2[15],sum2[15]);
 compressor4_2  c2_8(X5[8],X6[6],X7[4],X8[2],Coin2[7],Coin2[8],Coex2[16],sum2[16]);
 compressor4_2  c2_9(X5[9],X6[7],X7[5],X8[3],Coin2[8],Coin2[9],Coex2[17],sum2[17]);
 compressor4_2  c2_10(X5[10],X6[8],X7[6],X8[4],Coin2[9],Coin2[10],Coex2[18],sum2[18]);
 compressor4_2  c2_11(X5[11],X6[9],X7[7],X8[5],Coin2[10],Coin2[11],Coex2[19],sum2[19]);
 compressor4_2  c2_12(X5[12],X6[10],X7[8],X8[6],Coin2[11],Coin2[12],Coex2[20],sum2[20]);
 compressor4_2  c2_13(X5[13],X6[11],X7[9],X8[7],Coin2[12],Coin2[13],Coex2[21],sum2[21]);
 compressor4_2  c2_14(X5[14],X6[12],X7[10],X8[8],Coin2[13],Coin2[14],Coex2[22],sum2[22]);
 compressor4_2  c2_15(X5[15],X6[13],X7[11],X8[9],Coin2[14],Coin2[15],Coex2[23],sum2[23]);
 compressor4_2  c2_16(X5[16],X6[14],X7[12],X8[10],Coin2[15],Coin2[16],Coex2[24],sum2[24]);
 
 compressor4_2  c2_17(X5[17],X6[15],X7[13],X8[11],Coin2[16],Coin2[17],Coex2[25],sum2[25]);
 compressor4_2  c2_18(X5[18],X6[16],X7[14],X8[12],Coin2[17],Coin2[18],Coex2[26],sum2[26]);
 compressor4_2  c2_19(X5[19],X6[17],X7[15],X8[13],Coin2[18],Coin2[19],Coex2[27],sum2[27]);
 compressor4_2  c2_20(X5[20],X6[18],X7[16],X8[14],Coin2[19],Coin2[20],Coex2[28],sum2[28]);
 
 compressor4_2  c2_21(X5[21],X6[19],X7[17],X8[15],Coin2[20],Coin2[21],Coex2[29],sum2[29]);
 compressor4_2  c2_22(X5[22],X6[20],X7[18],X8[16],Coin2[21],Coin2[22],Coex2[30],sum2[30]);
 compressor4_2  c2_23(X5[23],X6[21],X7[19],X8[17],Coin2[22],Coin2[23],Coex2[31],sum2[31]);
 compressor4_2  c2_24(X5[24],X6[22],X7[20],X8[18],Coin2[23],Coin2[24],Coex2[32],sum2[32]);
 
 compressor4_2  c2_25(X5[25],X6[23],X7[21],X8[19],Coin2[24],Coin2[25],Coex2[33],sum2[33]);
 compressor4_2  c2_26(X5[26],X6[24],X7[22],X8[20],Coin2[25],Coin2[26],Coex2[34],sum2[34]);
 compressor4_2  c2_27(X5[27],X6[25],X7[23],X8[21],Coin2[26],Coin2[27],Coex2[35],sum2[35]);
 compressor4_2  c2_28(X5[28],X6[26],X7[24],X8[22],Coin2[27],Coin2[28],Coex2[36],sum2[36]);
 
 compressor4_2  c2_29(X5[29],X6[27],X7[25],X8[23],Coin2[28],Coin2[29],Coex2[37],sum2[37]);
 compressor4_2  c2_30(X5[30],X6[28],X7[26],X8[24],Coin2[29],Coin2[30],Coex2[38],sum2[38]);
 compressor4_2  c2_31(X5[31],X6[29],X7[27],X8[25],Coin2[30],Coin2[31],Coex2[39],sum2[39]);
 compressor4_2  c2_32(X5[32],X6[30],X7[28],X8[26],Coin2[31],Coin2[32],Coex2[40],sum2[40]);
 
 compressor4_2  c2_33(E5,   X6[31],X7[29],X8[27],Coin2[32],Coin2[33],Coex2[41],sum2[41]);
 
 compressor4_2  c2_34(1'b1,   X6[32],X7[30],X8[28],Coin2[33],Coin2[34],Coex2[42],sum2[42]);
 
 compressor4_2  c2_35(1'b0,    E6,    X7[31],X8[29],Coin2[34],Coin2[35],Coex2[43],sum2[43]);
 
 compressor4_2  c2_36(1'b0,     1'b1,     X7[32],X8[30],Coin2[35],Coin2[36],Coex2[44],sum2[44]);
 
 compressor4_2  c2_37(1'b0,     1'b0,     E7,    X8[31],Coin2[36],Coin2[37],Coex2[45],sum2[45]);
 
 compressor4_2  c2_38(1'b0,     1'b0,     1'b1,     X8[32],Coin2[37],Coin2[38],Coex2[46],sum2[46]);
 
 compressor4_2  c2_39(1'b0,     1'b0,     1'b0,     E8,    Coin2[38],Coin2[39],Coex2[47],sum2[47]);
 
 compressor4_2  c2_40(1'b0,     1'b0,     1'b0,     1'b1,     Coin2[39],Coin2[40],Coex2[48],sum2[48]);
 
 compressor4_2  c2_41(1'b0,     1'b0,     1'b0,     1'b0,     Coin2[40],Coin2[41],Coex2[49],sum2[49]);
 
 compressor4_2  c2_42(1'b0,     1'b0,     1'b0,     1'b0,     Coin2[41],Coin2[42],Coex2[50],sum2[50]);
 
 assign sum2[63:51]=0;
 assign sum2[5:0]=0;
 assign Coex2[5:0]=0;
 assign Coex2[63:51]=0;
 /******************************************************************************************
                                        ??????3
 ******************************************************************************************/
 compressor4_2  c3_00(sign8,1'b0,1'b0, 1'b0,   1'b0,      Coin3[63],Coex3[14],sum3[14]);
 compressor4_2  c3_000(1'b0,    1'b0,1'b0, 1'b0, Coin3[63],Coin3[62],Coex3[15],sum3[15]); 
 
 compressor4_2  c3_0(X9[0],sign9,1'b0, 1'b0, 1'b0,      Coin3[0],Coex3[16],sum3[16]);
 compressor4_2  c3_1(X9[1],    1'b0,1'b0, 1'b0, Coin3[0],Coin3[1],Coex3[17],sum3[17]);
 compressor4_2  c3_2(X9[2],X10[0],sign10,1'b0,Coin3[1],Coin3[2],Coex3[18],sum3[18]);
 compressor4_2  c3_3(X9[3],X10[1],1'b0,1'b0,Coin3[2],Coin3[3],Coex3[19],sum3[19]);
 compressor4_2  c3_4(X9[4],X10[2],X11[0],sign11,Coin3[3],Coin3[4],Coex3[20],sum3[20]);
 compressor4_2  c3_5(X9[5],X10[3],X11[1],1'b0,Coin3[4],Coin3[5],Coex3[21],sum3[21]);
 compressor4_2  c3_6(X9[6],X10[4],X11[2],X12[0],Coin3[5],Coin3[6],Coex3[22],sum3[22]);
 compressor4_2  c3_7(X9[7],X10[5],X11[3],X12[1],Coin3[6],Coin3[7],Coex3[23],sum3[23]);
 compressor4_2  c3_8(X9[8],X10[6],X11[4],X12[2],Coin3[7],Coin3[8],Coex3[24],sum3[24]);
 compressor4_2  c3_9(X9[9],X10[7],X11[5],X12[3],Coin3[8],Coin3[9],Coex3[25],sum3[25]);
 compressor4_2  c3_10(X9[10],X10[8],X11[6],X12[4],Coin3[9],Coin3[10],Coex3[26],sum3[26]);
 compressor4_2  c3_11(X9[11],X10[9],X11[7],X12[5],Coin3[10],Coin3[11],Coex3[27],sum3[27]);
 compressor4_2  c3_12(X9[12],X10[10],X11[8],X12[6],Coin3[11],Coin3[12],Coex3[28],sum3[28]);
 compressor4_2  c3_13(X9[13],X10[11],X11[9],X12[7],Coin3[12],Coin3[13],Coex3[29],sum3[29]);
 compressor4_2  c3_14(X9[14],X10[12],X11[10],X12[8],Coin3[13],Coin3[14],Coex3[30],sum3[30]);
 compressor4_2  c3_15(X9[15],X10[13],X11[11],X12[9],Coin3[14],Coin3[15],Coex3[31],sum3[31]);
 compressor4_2  c3_16(X9[16],X10[14],X11[12],X12[10],Coin3[15],Coin3[16],Coex3[32],sum3[32]);
 
 compressor4_2  c3_17(X9[17],X10[15],X11[13],X12[11],Coin3[16],Coin3[17],Coex3[33],sum3[33]);
 compressor4_2  c3_18(X9[18],X10[16],X11[14],X12[12],Coin3[17],Coin3[18],Coex3[34],sum3[34]);
 compressor4_2  c3_19(X9[19],X10[17],X11[15],X12[13],Coin3[18],Coin3[19],Coex3[35],sum3[35]);
 compressor4_2  c3_20(X9[20],X10[18],X11[16],X12[14],Coin3[19],Coin3[20],Coex3[36],sum3[36]);
 
 compressor4_2  c3_21(X9[21],X10[19],X11[17],X12[15],Coin3[20],Coin3[21],Coex3[37],sum3[37]);
 compressor4_2  c3_22(X9[22],X10[20],X11[18],X12[16],Coin3[21],Coin3[22],Coex3[38],sum3[38]);
 compressor4_2  c3_23(X9[23],X10[21],X11[19],X12[17],Coin3[22],Coin3[23],Coex3[39],sum3[39]);
 compressor4_2  c3_24(X9[24],X10[22],X11[20],X12[18],Coin3[23],Coin3[24],Coex3[40],sum3[40]);
 
 compressor4_2  c3_25(X9[25],X10[23],X11[21],X12[19],Coin3[24],Coin3[25],Coex3[41],sum3[41]);
 compressor4_2  c3_26(X9[26],X10[24],X11[22],X12[20],Coin3[25],Coin3[26],Coex3[42],sum3[42]);
 compressor4_2  c3_27(X9[27],X10[25],X11[23],X12[21],Coin3[26],Coin3[27],Coex3[43],sum3[43]);
 compressor4_2  c3_28(X9[28],X10[26],X11[24],X12[22],Coin3[27],Coin3[28],Coex3[44],sum3[44]);
 
 compressor4_2  c3_29(X9[29],X10[27],X11[25],X12[23],Coin3[28],Coin3[29],Coex3[45],sum3[45]);
 compressor4_2  c3_30(X9[30],X10[28],X11[26],X12[24],Coin3[29],Coin3[30],Coex3[46],sum3[46]);
 compressor4_2  c3_31(X9[31],X10[29],X11[27],X12[25],Coin3[30],Coin3[31],Coex3[47],sum3[47]);
 compressor4_2  c3_32(X9[32],X10[30],X11[28],X12[26],Coin3[31],Coin3[32],Coex3[48],sum3[48]);
 
 compressor4_2  c3_33(E9,   X10[31],X11[29],X12[27],Coin3[32],Coin3[33],Coex3[49],sum3[49]);
 
 compressor4_2  c3_34(1'b1,   X10[32],X11[30],X12[28],Coin3[33],Coin3[34],Coex3[50],sum3[50]);
 
 compressor4_2  c3_35(1'b0,    E10,    X11[31],X12[29],Coin3[34],Coin3[35],Coex3[51],sum3[51]);
 
 compressor4_2  c3_36(1'b0,     1'b1,     X11[32],X12[30],Coin3[35],Coin3[36],Coex3[52],sum3[52]);
 
 compressor4_2  c3_37(1'b0,     1'b0,     E11,    X12[31],Coin3[36],Coin3[37],Coex3[53],sum3[53]);
 
 compressor4_2  c3_38(1'b0,     1'b0,     1'b1,     X12[32],Coin3[37],Coin3[38],Coex3[54],sum3[54]);
 
 compressor4_2  c3_39(1'b0,     1'b0,     1'b0,     E12,    Coin3[38],Coin3[39],Coex3[55],sum3[55]);
 
 compressor4_2  c3_40(1'b0,     1'b0,     1'b0,     1'b1,     Coin3[39],Coin3[40],Coex3[56],sum3[56]);
 
 compressor4_2  c3_41(1'b0,     1'b0,     1'b0,     1'b0,     Coin3[40],Coin3[41],Coex3[57],sum3[57]);
 
 compressor4_2  c3_42(1'b0,     1'b0,     1'b0,     1'b0,     Coin3[41],Coin3[42],Coex3[58],sum3[58]);
 
 assign sum3[63:59]=0;
 assign sum3[13:0]=0;
 assign Coex3[13:0]=0;
 assign Coex3[63:59]=0;
 
  /******************************************************************************************
                                        ??????4
 ******************************************************************************************/
 compressor4_2  c4_00(sign12,1'b0,1'b0, 1'b0,   1'b0,      Coin4[63],Coex4[22],sum4[22]);
 compressor4_2  c4_000(1'b0,    1'b0,1'b0, 1'b0, Coin4[63],Coin4[62],Coex4[23],sum4[23]); 
 
 compressor4_2  c4_0(X13[0],sign13,1'b0, 1'b0, 1'b0,      Coin4[0],Coex4[24],sum4[24]);///////////////////////////////////////////////////////////////////////////
 compressor4_2  c4_1(X13[1],    1'b0,1'b0, 1'b0, Coin4[0],Coin4[1],Coex4[25],sum4[25]);
 compressor4_2  c4_2(X13[2],X14[0],sign14,1'b0,Coin4[1],Coin4[2],Coex4[26],sum4[26]);
 compressor4_2  c4_3(X13[3],X14[1],1'b0,1'b0,Coin4[2],Coin4[3],Coex4[27],sum4[27]);
 compressor4_2  c4_4(X13[4],X14[2],X15[0],sign15,Coin4[3],Coin4[4],Coex4[28],sum4[28]);
 compressor4_2  c4_5(X13[5],X14[3],X15[1],1'b0,Coin4[4],Coin4[5],Coex4[29],sum4[29]);
 compressor4_2  c4_6(X13[6],X14[4],X15[2],X16[0],Coin4[5],Coin4[6],Coex4[30],sum4[30]);
 compressor4_2  c4_7(X13[7],X14[5],X15[3],X16[1],Coin4[6],Coin4[7],Coex4[31],sum4[31]);
 compressor4_2  c4_8(X13[8],X14[6],X15[4],X16[2],Coin4[7],Coin4[8],Coex4[32],sum4[32]);
 compressor4_2  c4_9(X13[9],X14[7],X15[5],X16[3],Coin4[8],Coin4[9],Coex4[33],sum4[33]);
 compressor4_2  c4_10(X13[10],X14[8],X15[6],X16[4],Coin4[9],Coin4[10],Coex4[34],sum4[34]);
 compressor4_2  c4_11(X13[11],X14[9],X15[7],X16[5],Coin4[10],Coin4[11],Coex4[35],sum4[35]);
 compressor4_2  c4_12(X13[12],X14[10],X15[8],X16[6],Coin4[11],Coin4[12],Coex4[36],sum4[36]);
 compressor4_2  c4_13(X13[13],X14[11],X15[9],X16[7],Coin4[12],Coin4[13],Coex4[37],sum4[37]);
 compressor4_2  c4_14(X13[14],X14[12],X15[10],X16[8],Coin4[13],Coin4[14],Coex4[38],sum4[38]);
 compressor4_2  c4_15(X13[15],X14[13],X15[11],X16[9],Coin4[14],Coin4[15],Coex4[39],sum4[39]);
 compressor4_2  c4_16(X13[16],X14[14],X15[12],X16[10],Coin4[15],Coin4[16],Coex4[40],sum4[40]);
 
 compressor4_2  c4_17(X13[17],X14[15],X15[13],X16[11],Coin4[16],Coin4[17],Coex4[41],sum4[41]);
 compressor4_2  c4_18(X13[18],X14[16],X15[14],X16[12],Coin4[17],Coin4[18],Coex4[42],sum4[42]);
 compressor4_2  c4_19(X13[19],X14[17],X15[15],X16[13],Coin4[18],Coin4[19],Coex4[43],sum4[43]);
 compressor4_2  c4_20(X13[20],X14[18],X15[16],X16[14],Coin4[19],Coin4[20],Coex4[44],sum4[44]);
 
 compressor4_2  c4_21(X13[21],X14[19],X15[17],X16[15],Coin4[20],Coin4[21],Coex4[45],sum4[45]);
 compressor4_2  c4_22(X13[22],X14[20],X15[18],X16[16],Coin4[21],Coin4[22],Coex4[46],sum4[46]);
 compressor4_2  c4_23(X13[23],X14[21],X15[19],X16[17],Coin4[22],Coin4[23],Coex4[47],sum4[47]);
 compressor4_2  c4_24(X13[24],X14[22],X15[20],X16[18],Coin4[23],Coin4[24],Coex4[48],sum4[48]);
 
 compressor4_2  c4_25(X13[25],X14[23],X15[21],X16[19],Coin4[24],Coin4[25],Coex4[49],sum4[49]);
 compressor4_2  c4_26(X13[26],X14[24],X15[22],X16[20],Coin4[25],Coin4[26],Coex4[50],sum4[50]);
 compressor4_2  c4_27(X13[27],X14[25],X15[23],X16[21],Coin4[26],Coin4[27],Coex4[51],sum4[51]);
 compressor4_2  c4_28(X13[28],X14[26],X15[24],X16[22],Coin4[27],Coin4[28],Coex4[52],sum4[52]);
 
 compressor4_2  c4_29(X13[29],X14[27],X15[25],X16[23],Coin4[28],Coin4[29],Coex4[53],sum4[53]);
 compressor4_2  c4_30(X13[30],X14[28],X15[26],X16[24],Coin4[29],Coin4[30],Coex4[54],sum4[54]);
 compressor4_2  c4_31(X13[31],X14[29],X15[27],X16[25],Coin4[30],Coin4[31],Coex4[55],sum4[55]);
 compressor4_2  c4_32(X13[32],X14[30],X15[28],X16[26],Coin4[31],Coin4[32],Coex4[56],sum4[56]);
 
 compressor4_2  c4_33(E13,   X14[31],X15[29],X16[27],Coin4[32],Coin4[33],Coex4[57],sum4[57]);
 
 compressor4_2  c4_34(1'b1,   X14[32],X15[30],X16[28],Coin4[33],Coin4[34],Coex4[58],sum4[58]);
 
 compressor4_2  c4_35(1'b0,    E14,    X15[31],X16[29],Coin4[34],Coin4[35],Coex4[59],sum4[59]);
 
 compressor4_2  c4_36(1'b0,     1'b1,     X15[32],X16[30],Coin4[35],Coin4[36],Coex4[60],sum4[60]);
 
 compressor4_2  c4_37(1'b0,     1'b0,     E15,    X16[31],Coin4[36],Coin4[37],Coex4[61],sum4[61]);
 
 compressor4_2  c4_38(1'b0,     1'b0,     1'b1,     X16[32],Coin4[37],Coin4[38],Coex4[62],sum4[62]);
 
 compressor4_2  c4_39(1'b0,     1'b0,     1'b0,     E16,    Coin4[38],Coin4[39],Coex4[63],sum4[63]);//??????????????????????
 
 assign sum4[21:0]=0;
 assign Coex4[21:0]=0;
 
/******************************************************************************************
                                        ??????1
 ******************************************************************************************/
 compressor4_2 d1_0(sum1[0],sum2[0],1'b0,      1'b0,        1'b0,         Coin2_1[0],Coex2_1[0],sum1_sum2[0]);
 compressor4_2 d1_1(sum1[1],sum2[1],Coex1[0],Coex2[0],Coin2_1[0],Coin2_1[1],Coex2_1[1],sum1_sum2[1]);
 compressor4_2 d1_2(sum1[2],sum2[2],Coex1[1],Coex2[1],Coin2_1[1],Coin2_1[2],Coex2_1[2],sum1_sum2[2]);
 compressor4_2 d1_3(sum1[3],sum2[3],Coex1[2],Coex2[2],Coin2_1[2],Coin2_1[3],Coex2_1[3],sum1_sum2[3]); 
 compressor4_2 d1_4(sum1[4],sum2[4],Coex1[3],Coex2[3],Coin2_1[3],Coin2_1[4],Coex2_1[4],sum1_sum2[4]);
 compressor4_2 d1_5(sum1[5],sum2[5],Coex1[4],Coex2[4],Coin2_1[4],Coin2_1[5],Coex2_1[5],sum1_sum2[5]); 
 compressor4_2 d1_6(sum1[6],sum2[6],Coex1[5],Coex2[5],Coin2_1[5],Coin2_1[6],Coex2_1[6],sum1_sum2[6]); 
 compressor4_2 d1_7(sum1[7],sum2[7],Coex1[6],Coex2[6],Coin2_1[6],Coin2_1[7],Coex2_1[7],sum1_sum2[7]); 
 compressor4_2 d1_8(sum1[8],sum2[8],Coex1[7],Coex2[7],Coin2_1[7],Coin2_1[8],Coex2_1[8],sum1_sum2[8]); 
 compressor4_2 d1_9(sum1[9],sum2[9],Coex1[8],Coex2[8],Coin2_1[8],Coin2_1[9],Coex2_1[9],sum1_sum2[9]);
 compressor4_2 d1_10(sum1[10],sum2[10],Coex1[9],Coex2[9],Coin2_1[9],Coin2_1[10],Coex2_1[10],sum1_sum2[10]);
 compressor4_2 d1_11(sum1[11],sum2[11],Coex1[10],Coex2[10],Coin2_1[10],Coin2_1[11],Coex2_1[11],sum1_sum2[11]);
 compressor4_2 d1_12(sum1[12],sum2[12],Coex1[11],Coex2[11],Coin2_1[11],Coin2_1[12],Coex2_1[12],sum1_sum2[12]);
 compressor4_2 d1_13(sum1[13],sum2[13],Coex1[12],Coex2[12],Coin2_1[12],Coin2_1[13],Coex2_1[13],sum1_sum2[13]); 
 compressor4_2 d1_14(sum1[14],sum2[14],Coex1[13],Coex2[13],Coin2_1[13],Coin2_1[14],Coex2_1[14],sum1_sum2[14]);
 compressor4_2 d1_15(sum1[15],sum2[15],Coex1[14],Coex2[14],Coin2_1[14],Coin2_1[15],Coex2_1[15],sum1_sum2[15]); 
 compressor4_2 d1_16(sum1[16],sum2[16],Coex1[15],Coex2[15],Coin2_1[15],Coin2_1[16],Coex2_1[16],sum1_sum2[16]); 
 compressor4_2 d1_17(sum1[17],sum2[17],Coex1[16],Coex2[16],Coin2_1[16],Coin2_1[17],Coex2_1[17],sum1_sum2[17]); 
 compressor4_2 d1_18(sum1[18],sum2[18],Coex1[17],Coex2[17],Coin2_1[17],Coin2_1[18],Coex2_1[18],sum1_sum2[18]); 
 compressor4_2 d1_19(sum1[19],sum2[19],Coex1[18],Coex2[18],Coin2_1[18],Coin2_1[19],Coex2_1[19],sum1_sum2[19]); 
 compressor4_2 d1_20(sum1[20],sum2[20],Coex1[19],Coex2[19],Coin2_1[19],Coin2_1[20],Coex2_1[20],sum1_sum2[20]);
 compressor4_2 d1_21(sum1[21],sum2[21],Coex1[20],Coex2[20],Coin2_1[20],Coin2_1[21],Coex2_1[21],sum1_sum2[21]);
 compressor4_2 d1_22(sum1[22],sum2[22],Coex1[21],Coex2[21],Coin2_1[21],Coin2_1[22],Coex2_1[22],sum1_sum2[22]);
 compressor4_2 d1_23(sum1[23],sum2[23],Coex1[22],Coex2[22],Coin2_1[22],Coin2_1[23],Coex2_1[23],sum1_sum2[23]); 
 compressor4_2 d1_24(sum1[24],sum2[24],Coex1[23],Coex2[23],Coin2_1[23],Coin2_1[24],Coex2_1[24],sum1_sum2[24]);
 compressor4_2 d1_25(sum1[25],sum2[25],Coex1[24],Coex2[24],Coin2_1[24],Coin2_1[25],Coex2_1[25],sum1_sum2[25]); 
 compressor4_2 d1_26(sum1[26],sum2[26],Coex1[25],Coex2[25],Coin2_1[25],Coin2_1[26],Coex2_1[26],sum1_sum2[26]); 
 compressor4_2 d1_27(sum1[27],sum2[27],Coex1[26],Coex2[26],Coin2_1[26],Coin2_1[27],Coex2_1[27],sum1_sum2[27]); 
 compressor4_2 d1_28(sum1[28],sum2[28],Coex1[27],Coex2[27],Coin2_1[27],Coin2_1[28],Coex2_1[28],sum1_sum2[28]); 
 compressor4_2 d1_29(sum1[29],sum2[29],Coex1[28],Coex2[28],Coin2_1[28],Coin2_1[29],Coex2_1[29],sum1_sum2[29]); 
 compressor4_2 d1_30(sum1[30],sum2[30],Coex1[29],Coex2[29],Coin2_1[29],Coin2_1[30],Coex2_1[30],sum1_sum2[30]);
 compressor4_2 d1_31(sum1[31],sum2[31],Coex1[30],Coex2[30],Coin2_1[30],Coin2_1[31],Coex2_1[31],sum1_sum2[31]);
 compressor4_2 d1_32(sum1[32],sum2[32],Coex1[31],Coex2[31],Coin2_1[31],Coin2_1[32],Coex2_1[32],sum1_sum2[32]);
 compressor4_2 d1_33(sum1[33],sum2[33],Coex1[32],Coex2[32],Coin2_1[32],Coin2_1[33],Coex2_1[33],sum1_sum2[33]); 
 compressor4_2 d1_34(sum1[34],sum2[34],Coex1[33],Coex2[33],Coin2_1[33],Coin2_1[34],Coex2_1[34],sum1_sum2[34]);
 compressor4_2 d1_35(sum1[35],sum2[35],Coex1[34],Coex2[34],Coin2_1[34],Coin2_1[35],Coex2_1[35],sum1_sum2[35]); 
 compressor4_2 d1_36(sum1[36],sum2[36],Coex1[35],Coex2[35],Coin2_1[35],Coin2_1[36],Coex2_1[36],sum1_sum2[36]); 
 compressor4_2 d1_37(sum1[37],sum2[37],Coex1[36],Coex2[36],Coin2_1[36],Coin2_1[37],Coex2_1[37],sum1_sum2[37]); 
 compressor4_2 d1_38(sum1[38],sum2[38],Coex1[37],Coex2[37],Coin2_1[37],Coin2_1[38],Coex2_1[38],sum1_sum2[38]); 
 compressor4_2 d1_39(sum1[39],sum2[39],Coex1[38],Coex2[38],Coin2_1[38],Coin2_1[39],Coex2_1[39],sum1_sum2[39]); 
 compressor4_2 d1_40(sum1[40],sum2[40],Coex1[39],Coex2[39],Coin2_1[39],Coin2_1[40],Coex2_1[40],sum1_sum2[40]);
 compressor4_2 d1_41(sum1[41],sum2[41],Coex1[40],Coex2[40],Coin2_1[40],Coin2_1[41],Coex2_1[41],sum1_sum2[41]);
 compressor4_2 d1_42(sum1[42],sum2[42],Coex1[41],Coex2[41],Coin2_1[41],Coin2_1[42],Coex2_1[42],sum1_sum2[42]);
 compressor4_2 d1_43(sum1[43],sum2[43],Coex1[42],Coex2[42],Coin2_1[42],Coin2_1[43],Coex2_1[43],sum1_sum2[43]); 
 compressor4_2 d1_44(sum1[44],sum2[44],Coex1[43],Coex2[43],Coin2_1[43],Coin2_1[44],Coex2_1[44],sum1_sum2[44]);
 compressor4_2 d1_45(sum1[45],sum2[45],Coex1[44],Coex2[44],Coin2_1[44],Coin2_1[45],Coex2_1[45],sum1_sum2[45]); 
 compressor4_2 d1_46(sum1[46],sum2[46],Coex1[45],Coex2[45],Coin2_1[45],Coin2_1[46],Coex2_1[46],sum1_sum2[46]); 
 compressor4_2 d1_47(sum1[47],sum2[47],Coex1[46],Coex2[46],Coin2_1[46],Coin2_1[47],Coex2_1[47],sum1_sum2[47]); 
 compressor4_2 d1_48(sum1[48],sum2[48],Coex1[47],Coex2[47],Coin2_1[47],Coin2_1[48],Coex2_1[48],sum1_sum2[48]); 
 compressor4_2 d1_49(sum1[49],sum2[49],Coex1[48],Coex2[48],Coin2_1[48],Coin2_1[49],Coex2_1[49],sum1_sum2[49]); 
 compressor4_2 d1_50(sum1[50],sum2[50],Coex1[49],Coex2[49],Coin2_1[49],Coin2_1[50],Coex2_1[50],sum1_sum2[50]);  
 
 assign sum1_sum2[63:51]=0;
 assign Coex2_1[63:51]=0;
 
 /******************************************************************************************
                                        ??????2
 ******************************************************************************************/
 
 compressor4_2 d2_0(sum3[0],sum4[0],1'b0,      1'b0,        1'b0,         Coin2_2[0],Coex2_2[0],sum3_sum4[0]);
 compressor4_2 d2_1(sum3[1],sum4[1],Coex3[0],Coex4[0],Coin2_2[0],Coin2_2[1],Coex2_2[1],sum3_sum4[1]);
 compressor4_2 d2_2(sum3[2],sum4[2],Coex3[1],Coex4[1],Coin2_2[1],Coin2_2[2],Coex2_2[2],sum3_sum4[2]);
 compressor4_2 d2_3(sum3[3],sum4[3],Coex3[2],Coex4[2],Coin2_2[2],Coin2_2[3],Coex2_2[3],sum3_sum4[3]); 
 compressor4_2 d2_4(sum3[4],sum4[4],Coex3[3],Coex4[3],Coin2_2[3],Coin2_2[4],Coex2_2[4],sum3_sum4[4]);
 compressor4_2 d2_5(sum3[5],sum4[5],Coex3[4],Coex4[4],Coin2_2[4],Coin2_2[5],Coex2_2[5],sum3_sum4[5]); 
 compressor4_2 d2_6(sum3[6],sum4[6],Coex3[5],Coex4[5],Coin2_2[5],Coin2_2[6],Coex2_2[6],sum3_sum4[6]); 
 compressor4_2 d2_7(sum3[7],sum4[7],Coex3[6],Coex4[6],Coin2_2[6],Coin2_2[7],Coex2_2[7],sum3_sum4[7]); 
 compressor4_2 d2_8(sum3[8],sum4[8],Coex3[7],Coex4[7],Coin2_2[7],Coin2_2[8],Coex2_2[8],sum3_sum4[8]); 
 compressor4_2 d2_9(sum3[9],sum4[9],Coex3[8],Coex4[8],Coin2_2[8],Coin2_2[9],Coex2_2[9],sum3_sum4[9]);
 compressor4_2 d2_10(sum3[10],sum4[10],Coex3[9],Coex4[9],Coin2_2[9],Coin2_2[10],Coex2_2[10],sum3_sum4[10]);
 compressor4_2 d2_11(sum3[11],sum4[11],Coex3[10],Coex4[10],Coin2_2[10],Coin2_2[11],Coex2_2[11],sum3_sum4[11]);
 compressor4_2 d2_12(sum3[12],sum4[12],Coex3[11],Coex4[11],Coin2_2[11],Coin2_2[12],Coex2_2[12],sum3_sum4[12]);
 compressor4_2 d2_13(sum3[13],sum4[13],Coex3[12],Coex4[12],Coin2_2[12],Coin2_2[13],Coex2_2[13],sum3_sum4[13]); 
 compressor4_2 d2_14(sum3[14],sum4[14],Coex3[13],Coex4[13],Coin2_2[13],Coin2_2[14],Coex2_2[14],sum3_sum4[14]);
 compressor4_2 d2_15(sum3[15],sum4[15],Coex3[14],Coex4[14],Coin2_2[14],Coin2_2[15],Coex2_2[15],sum3_sum4[15]); 
 compressor4_2 d2_16(sum3[16],sum4[16],Coex3[15],Coex4[15],Coin2_2[15],Coin2_2[16],Coex2_2[16],sum3_sum4[16]); 
 compressor4_2 d2_17(sum3[17],sum4[17],Coex3[16],Coex4[16],Coin2_2[16],Coin2_2[17],Coex2_2[17],sum3_sum4[17]); 
 compressor4_2 d2_18(sum3[18],sum4[18],Coex3[17],Coex4[17],Coin2_2[17],Coin2_2[18],Coex2_2[18],sum3_sum4[18]); 
 compressor4_2 d2_19(sum3[19],sum4[19],Coex3[18],Coex4[18],Coin2_2[18],Coin2_2[19],Coex2_2[19],sum3_sum4[19]); 
 compressor4_2 d2_20(sum3[20],sum4[20],Coex3[19],Coex4[19],Coin2_2[19],Coin2_2[20],Coex2_2[20],sum3_sum4[20]);
 compressor4_2 d2_21(sum3[21],sum4[21],Coex3[20],Coex4[20],Coin2_2[20],Coin2_2[21],Coex2_2[21],sum3_sum4[21]);
 compressor4_2 d2_22(sum3[22],sum4[22],Coex3[21],Coex4[21],Coin2_2[21],Coin2_2[22],Coex2_2[22],sum3_sum4[22]);
 compressor4_2 d2_23(sum3[23],sum4[23],Coex3[22],Coex4[22],Coin2_2[22],Coin2_2[23],Coex2_2[23],sum3_sum4[23]); 
 compressor4_2 d2_24(sum3[24],sum4[24],Coex3[23],Coex4[23],Coin2_2[23],Coin2_2[24],Coex2_2[24],sum3_sum4[24]);
 compressor4_2 d2_25(sum3[25],sum4[25],Coex3[24],Coex4[24],Coin2_2[24],Coin2_2[25],Coex2_2[25],sum3_sum4[25]); 
 compressor4_2 d2_26(sum3[26],sum4[26],Coex3[25],Coex4[25],Coin2_2[25],Coin2_2[26],Coex2_2[26],sum3_sum4[26]); 
 compressor4_2 d2_27(sum3[27],sum4[27],Coex3[26],Coex4[26],Coin2_2[26],Coin2_2[27],Coex2_2[27],sum3_sum4[27]); 
 compressor4_2 d2_28(sum3[28],sum4[28],Coex3[27],Coex4[27],Coin2_2[27],Coin2_2[28],Coex2_2[28],sum3_sum4[28]); 
 compressor4_2 d2_29(sum3[29],sum4[29],Coex3[28],Coex4[28],Coin2_2[28],Coin2_2[29],Coex2_2[29],sum3_sum4[29]); 
 compressor4_2 d2_30(sum3[30],sum4[30],Coex3[29],Coex4[29],Coin2_2[29],Coin2_2[30],Coex2_2[30],sum3_sum4[30]);
 compressor4_2 d2_31(sum3[31],sum4[31],Coex3[30],Coex4[30],Coin2_2[30],Coin2_2[31],Coex2_2[31],sum3_sum4[31]);
 compressor4_2 d2_32(sum3[32],sum4[32],Coex3[31],Coex4[31],Coin2_2[31],Coin2_2[32],Coex2_2[32],sum3_sum4[32]);
 compressor4_2 d2_33(sum3[33],sum4[33],Coex3[32],Coex4[32],Coin2_2[32],Coin2_2[33],Coex2_2[33],sum3_sum4[33]); 
 compressor4_2 d2_34(sum3[34],sum4[34],Coex3[33],Coex4[33],Coin2_2[33],Coin2_2[34],Coex2_2[34],sum3_sum4[34]);
 compressor4_2 d2_35(sum3[35],sum4[35],Coex3[34],Coex4[34],Coin2_2[34],Coin2_2[35],Coex2_2[35],sum3_sum4[35]); 
 compressor4_2 d2_36(sum3[36],sum4[36],Coex3[35],Coex4[35],Coin2_2[35],Coin2_2[36],Coex2_2[36],sum3_sum4[36]); 
 compressor4_2 d2_37(sum3[37],sum4[37],Coex3[36],Coex4[36],Coin2_2[36],Coin2_2[37],Coex2_2[37],sum3_sum4[37]); 
 compressor4_2 d2_38(sum3[38],sum4[38],Coex3[37],Coex4[37],Coin2_2[37],Coin2_2[38],Coex2_2[38],sum3_sum4[38]); 
 compressor4_2 d2_39(sum3[39],sum4[39],Coex3[38],Coex4[38],Coin2_2[38],Coin2_2[39],Coex2_2[39],sum3_sum4[39]); 
 compressor4_2 d2_40(sum3[40],sum4[40],Coex3[39],Coex4[39],Coin2_2[39],Coin2_2[40],Coex2_2[40],sum3_sum4[40]);
 compressor4_2 d2_41(sum3[41],sum4[41],Coex3[40],Coex4[40],Coin2_2[40],Coin2_2[41],Coex2_2[41],sum3_sum4[41]);
 compressor4_2 d2_42(sum3[42],sum4[42],Coex3[41],Coex4[41],Coin2_2[41],Coin2_2[42],Coex2_2[42],sum3_sum4[42]);
 compressor4_2 d2_43(sum3[43],sum4[43],Coex3[42],Coex4[42],Coin2_2[42],Coin2_2[43],Coex2_2[43],sum3_sum4[43]); 
 compressor4_2 d2_44(sum3[44],sum4[44],Coex3[43],Coex4[43],Coin2_2[43],Coin2_2[44],Coex2_2[44],sum3_sum4[44]);
 compressor4_2 d2_45(sum3[45],sum4[45],Coex3[44],Coex4[44],Coin2_2[44],Coin2_2[45],Coex2_2[45],sum3_sum4[45]); 
 compressor4_2 d2_46(sum3[46],sum4[46],Coex3[45],Coex4[45],Coin2_2[45],Coin2_2[46],Coex2_2[46],sum3_sum4[46]); 
 compressor4_2 d2_47(sum3[47],sum4[47],Coex3[46],Coex4[46],Coin2_2[46],Coin2_2[47],Coex2_2[47],sum3_sum4[47]); 
 compressor4_2 d2_48(sum3[48],sum4[48],Coex3[47],Coex4[47],Coin2_2[47],Coin2_2[48],Coex2_2[48],sum3_sum4[48]); 
 compressor4_2 d2_49(sum3[49],sum4[49],Coex3[48],Coex4[48],Coin2_2[48],Coin2_2[49],Coex2_2[49],sum3_sum4[49]); 
 compressor4_2 d2_50(sum3[50],sum4[50],Coex3[49],Coex4[49],Coin2_2[49],Coin2_2[50],Coex2_2[50],sum3_sum4[50]);  
 compressor4_2 d2_51(sum3[51],sum4[51],Coex3[50],Coex4[50],Coin2_2[50],Coin2_2[51],Coex2_2[51],sum3_sum4[51]); 
 compressor4_2 d2_52(sum3[52],sum4[52],Coex3[51],Coex4[51],Coin2_2[51],Coin2_2[52],Coex2_2[52],sum3_sum4[52]); 
 compressor4_2 d2_53(sum3[53],sum4[53],Coex3[52],Coex4[52],Coin2_2[52],Coin2_2[53],Coex2_2[53],sum3_sum4[53]); 
 compressor4_2 d2_54(sum3[54],sum4[54],Coex3[53],Coex4[53],Coin2_2[53],Coin2_2[54],Coex2_2[54],sum3_sum4[54]); 
 compressor4_2 d2_55(sum3[55],sum4[55],Coex3[54],Coex4[54],Coin2_2[54],Coin2_2[55],Coex2_2[55],sum3_sum4[55]); 
 compressor4_2 d2_56(sum3[56],sum4[56],Coex3[55],Coex4[55],Coin2_2[55],Coin2_2[56],Coex2_2[56],sum3_sum4[56]); 
 compressor4_2 d2_57(sum3[57],sum4[57],Coex3[56],Coex4[56],Coin2_2[56],Coin2_2[57],Coex2_2[57],sum3_sum4[57]); 
 compressor4_2 d2_58(sum3[58],sum4[58],Coex3[57],Coex4[57],Coin2_2[57],Coin2_2[58],Coex2_2[58],sum3_sum4[58]); 
 compressor4_2 d2_59(sum3[59],sum4[59],Coex3[58],Coex4[58],Coin2_2[58],Coin2_2[59],Coex2_2[59],sum3_sum4[59]); 
 compressor4_2 d2_60(sum3[60],sum4[60],Coex3[59],Coex4[59],Coin2_2[59],Coin2_2[60],Coex2_2[60],sum3_sum4[60]);  
 compressor4_2 d2_61(sum3[61],sum4[61],Coex3[60],Coex4[60],Coin2_2[60],Coin2_2[61],Coex2_2[61],sum3_sum4[61]);  
 compressor4_2 d2_62(sum3[62],sum4[62],Coex3[61],Coex4[61],Coin2_2[61],Coin2_2[62],Coex2_2[62],sum3_sum4[62]);  
 compressor4_2 d2_63(sum3[63],sum4[63],Coex3[62],Coex4[62],Coin2_2[62],Coin2_2[63],Coex2_2[63],sum3_sum4[63]); //?????????????????????????????????????????????
   

 /******************************************************************************************
                                        ??????
 ******************************************************************************************/
 compressor4_2 e1_0(sum1_sum2[0],sum3_sum4[0],1'b0,      1'b0,        1'b0,         Coin3_1[0],Coex3_1[0],sum1sum2_sum3sum4[0]);
 compressor4_2 e1_1(sum1_sum2[1],sum3_sum4[1],Coex2_1[0],Coex2_2[0],Coin3_1[0],Coin3_1[1],Coex3_1[1],sum1sum2_sum3sum4[1]);
 compressor4_2 e1_2(sum1_sum2[2],sum3_sum4[2],Coex2_1[1],Coex2_2[1],Coin3_1[1],Coin3_1[2],Coex3_1[2],sum1sum2_sum3sum4[2]);
 compressor4_2 e1_3(sum1_sum2[3],sum3_sum4[3],Coex2_1[2],Coex2_2[2],Coin3_1[2],Coin3_1[3],Coex3_1[3],sum1sum2_sum3sum4[3]); 
 compressor4_2 e1_4(sum1_sum2[4],sum3_sum4[4],Coex2_1[3],Coex2_2[3],Coin3_1[3],Coin3_1[4],Coex3_1[4],sum1sum2_sum3sum4[4]);
 compressor4_2 e1_5(sum1_sum2[5],sum3_sum4[5],Coex2_1[4],Coex2_2[4],Coin3_1[4],Coin3_1[5],Coex3_1[5],sum1sum2_sum3sum4[5]); 
 compressor4_2 e1_6(sum1_sum2[6],sum3_sum4[6],Coex2_1[5],Coex2_2[5],Coin3_1[5],Coin3_1[6],Coex3_1[6],sum1sum2_sum3sum4[6]); 
 compressor4_2 e1_7(sum1_sum2[7],sum3_sum4[7],Coex2_1[6],Coex2_2[6],Coin3_1[6],Coin3_1[7],Coex3_1[7],sum1sum2_sum3sum4[7]); 
 compressor4_2 e1_8(sum1_sum2[8],sum3_sum4[8],Coex2_1[7],Coex2_2[7],Coin3_1[7],Coin3_1[8],Coex3_1[8],sum1sum2_sum3sum4[8]); 
 compressor4_2 e1_9(sum1_sum2[9],sum3_sum4[9],Coex2_1[8],Coex2_2[8],Coin3_1[8],Coin3_1[9],Coex3_1[9],sum1sum2_sum3sum4[9]);
 compressor4_2 e1_10(sum1_sum2[10],sum3_sum4[10],Coex2_1[9],Coex2_2[9],Coin3_1[9],Coin3_1[10],Coex3_1[10],sum1sum2_sum3sum4[10]);
 compressor4_2 e1_11(sum1_sum2[11],sum3_sum4[11],Coex2_1[10],Coex2_2[10],Coin3_1[10],Coin3_1[11],Coex3_1[11],sum1sum2_sum3sum4[11]);
 compressor4_2 e1_12(sum1_sum2[12],sum3_sum4[12],Coex2_1[11],Coex2_2[11],Coin3_1[11],Coin3_1[12],Coex3_1[12],sum1sum2_sum3sum4[12]);
 compressor4_2 e1_13(sum1_sum2[13],sum3_sum4[13],Coex2_1[12],Coex2_2[12],Coin3_1[12],Coin3_1[13],Coex3_1[13],sum1sum2_sum3sum4[13]); 
 compressor4_2 e1_14(sum1_sum2[14],sum3_sum4[14],Coex2_1[13],Coex2_2[13],Coin3_1[13],Coin3_1[14],Coex3_1[14],sum1sum2_sum3sum4[14]);
 compressor4_2 e1_15(sum1_sum2[15],sum3_sum4[15],Coex2_1[14],Coex2_2[14],Coin3_1[14],Coin3_1[15],Coex3_1[15],sum1sum2_sum3sum4[15]); 
 compressor4_2 e1_16(sum1_sum2[16],sum3_sum4[16],Coex2_1[15],Coex2_2[15],Coin3_1[15],Coin3_1[16],Coex3_1[16],sum1sum2_sum3sum4[16]); 
 compressor4_2 e1_17(sum1_sum2[17],sum3_sum4[17],Coex2_1[16],Coex2_2[16],Coin3_1[16],Coin3_1[17],Coex3_1[17],sum1sum2_sum3sum4[17]); 
 compressor4_2 e1_18(sum1_sum2[18],sum3_sum4[18],Coex2_1[17],Coex2_2[17],Coin3_1[17],Coin3_1[18],Coex3_1[18],sum1sum2_sum3sum4[18]); 
 compressor4_2 e1_19(sum1_sum2[19],sum3_sum4[19],Coex2_1[18],Coex2_2[18],Coin3_1[18],Coin3_1[19],Coex3_1[19],sum1sum2_sum3sum4[19]); 
 compressor4_2 e1_20(sum1_sum2[20],sum3_sum4[20],Coex2_1[19],Coex2_2[19],Coin3_1[19],Coin3_1[20],Coex3_1[20],sum1sum2_sum3sum4[20]);
 compressor4_2 e1_21(sum1_sum2[21],sum3_sum4[21],Coex2_1[20],Coex2_2[20],Coin3_1[20],Coin3_1[21],Coex3_1[21],sum1sum2_sum3sum4[21]);
 compressor4_2 e1_22(sum1_sum2[22],sum3_sum4[22],Coex2_1[21],Coex2_2[21],Coin3_1[21],Coin3_1[22],Coex3_1[22],sum1sum2_sum3sum4[22]);
 compressor4_2 e1_23(sum1_sum2[23],sum3_sum4[23],Coex2_1[22],Coex2_2[22],Coin3_1[22],Coin3_1[23],Coex3_1[23],sum1sum2_sum3sum4[23]); 
 compressor4_2 e1_24(sum1_sum2[24],sum3_sum4[24],Coex2_1[23],Coex2_2[23],Coin3_1[23],Coin3_1[24],Coex3_1[24],sum1sum2_sum3sum4[24]);
 compressor4_2 e1_25(sum1_sum2[25],sum3_sum4[25],Coex2_1[24],Coex2_2[24],Coin3_1[24],Coin3_1[25],Coex3_1[25],sum1sum2_sum3sum4[25]); 
 compressor4_2 e1_26(sum1_sum2[26],sum3_sum4[26],Coex2_1[25],Coex2_2[25],Coin3_1[25],Coin3_1[26],Coex3_1[26],sum1sum2_sum3sum4[26]); 
 compressor4_2 e1_27(sum1_sum2[27],sum3_sum4[27],Coex2_1[26],Coex2_2[26],Coin3_1[26],Coin3_1[27],Coex3_1[27],sum1sum2_sum3sum4[27]); 
 compressor4_2 e1_28(sum1_sum2[28],sum3_sum4[28],Coex2_1[27],Coex2_2[27],Coin3_1[27],Coin3_1[28],Coex3_1[28],sum1sum2_sum3sum4[28]); 
 compressor4_2 e1_29(sum1_sum2[29],sum3_sum4[29],Coex2_1[28],Coex2_2[28],Coin3_1[28],Coin3_1[29],Coex3_1[29],sum1sum2_sum3sum4[29]); 
 compressor4_2 e1_30(sum1_sum2[30],sum3_sum4[30],Coex2_1[29],Coex2_2[29],Coin3_1[29],Coin3_1[30],Coex3_1[30],sum1sum2_sum3sum4[30]);
 compressor4_2 e1_31(sum1_sum2[31],sum3_sum4[31],Coex2_1[30],Coex2_2[30],Coin3_1[30],Coin3_1[31],Coex3_1[31],sum1sum2_sum3sum4[31]);
 compressor4_2 e1_32(sum1_sum2[32],sum3_sum4[32],Coex2_1[31],Coex2_2[31],Coin3_1[31],Coin3_1[32],Coex3_1[32],sum1sum2_sum3sum4[32]);
 compressor4_2 e1_33(sum1_sum2[33],sum3_sum4[33],Coex2_1[32],Coex2_2[32],Coin3_1[32],Coin3_1[33],Coex3_1[33],sum1sum2_sum3sum4[33]); 
 compressor4_2 e1_34(sum1_sum2[34],sum3_sum4[34],Coex2_1[33],Coex2_2[33],Coin3_1[33],Coin3_1[34],Coex3_1[34],sum1sum2_sum3sum4[34]);
 compressor4_2 e1_35(sum1_sum2[35],sum3_sum4[35],Coex2_1[34],Coex2_2[34],Coin3_1[34],Coin3_1[35],Coex3_1[35],sum1sum2_sum3sum4[35]); 
 compressor4_2 e1_36(sum1_sum2[36],sum3_sum4[36],Coex2_1[35],Coex2_2[35],Coin3_1[35],Coin3_1[36],Coex3_1[36],sum1sum2_sum3sum4[36]); 
 compressor4_2 e1_37(sum1_sum2[37],sum3_sum4[37],Coex2_1[36],Coex2_2[36],Coin3_1[36],Coin3_1[37],Coex3_1[37],sum1sum2_sum3sum4[37]); 
 compressor4_2 e1_38(sum1_sum2[38],sum3_sum4[38],Coex2_1[37],Coex2_2[37],Coin3_1[37],Coin3_1[38],Coex3_1[38],sum1sum2_sum3sum4[38]); 
 compressor4_2 e1_39(sum1_sum2[39],sum3_sum4[39],Coex2_1[38],Coex2_2[38],Coin3_1[38],Coin3_1[39],Coex3_1[39],sum1sum2_sum3sum4[39]); 
 compressor4_2 e1_40(sum1_sum2[40],sum3_sum4[40],Coex2_1[39],Coex2_2[39],Coin3_1[39],Coin3_1[40],Coex3_1[40],sum1sum2_sum3sum4[40]);
 compressor4_2 e1_41(sum1_sum2[41],sum3_sum4[41],Coex2_1[40],Coex2_2[40],Coin3_1[40],Coin3_1[41],Coex3_1[41],sum1sum2_sum3sum4[41]);
 compressor4_2 e1_42(sum1_sum2[42],sum3_sum4[42],Coex2_1[41],Coex2_2[41],Coin3_1[41],Coin3_1[42],Coex3_1[42],sum1sum2_sum3sum4[42]);
 compressor4_2 e1_43(sum1_sum2[43],sum3_sum4[43],Coex2_1[42],Coex2_2[42],Coin3_1[42],Coin3_1[43],Coex3_1[43],sum1sum2_sum3sum4[43]); 
 compressor4_2 e1_44(sum1_sum2[44],sum3_sum4[44],Coex2_1[43],Coex2_2[43],Coin3_1[43],Coin3_1[44],Coex3_1[44],sum1sum2_sum3sum4[44]);
 compressor4_2 e1_45(sum1_sum2[45],sum3_sum4[45],Coex2_1[44],Coex2_2[44],Coin3_1[44],Coin3_1[45],Coex3_1[45],sum1sum2_sum3sum4[45]); 
 compressor4_2 e1_46(sum1_sum2[46],sum3_sum4[46],Coex2_1[45],Coex2_2[45],Coin3_1[45],Coin3_1[46],Coex3_1[46],sum1sum2_sum3sum4[46]); 
 compressor4_2 e1_47(sum1_sum2[47],sum3_sum4[47],Coex2_1[46],Coex2_2[46],Coin3_1[46],Coin3_1[47],Coex3_1[47],sum1sum2_sum3sum4[47]); 
 compressor4_2 e1_48(sum1_sum2[48],sum3_sum4[48],Coex2_1[47],Coex2_2[47],Coin3_1[47],Coin3_1[48],Coex3_1[48],sum1sum2_sum3sum4[48]); 
 compressor4_2 e1_49(sum1_sum2[49],sum3_sum4[49],Coex2_1[48],Coex2_2[48],Coin3_1[48],Coin3_1[49],Coex3_1[49],sum1sum2_sum3sum4[49]); 
 compressor4_2 e1_50(sum1_sum2[50],sum3_sum4[50],Coex2_1[49],Coex2_2[49],Coin3_1[49],Coin3_1[50],Coex3_1[50],sum1sum2_sum3sum4[50]);   
 compressor4_2 e1_51(sum1_sum2[51],sum3_sum4[51],Coex2_1[50],Coex2_2[50],Coin3_1[50],Coin3_1[51],Coex3_1[51],sum1sum2_sum3sum4[51]);
 compressor4_2 e1_52(sum1_sum2[52],sum3_sum4[52],Coex2_1[51],Coex2_2[51],Coin3_1[51],Coin3_1[52],Coex3_1[52],sum1sum2_sum3sum4[52]);
 compressor4_2 e1_53(sum1_sum2[53],sum3_sum4[53],Coex2_1[52],Coex2_2[52],Coin3_1[52],Coin3_1[53],Coex3_1[53],sum1sum2_sum3sum4[53]); 
 compressor4_2 e1_54(sum1_sum2[54],sum3_sum4[54],Coex2_1[53],Coex2_2[53],Coin3_1[53],Coin3_1[54],Coex3_1[54],sum1sum2_sum3sum4[54]);
 compressor4_2 e1_55(sum1_sum2[55],sum3_sum4[55],Coex2_1[54],Coex2_2[54],Coin3_1[54],Coin3_1[55],Coex3_1[55],sum1sum2_sum3sum4[55]); 
 compressor4_2 e1_56(sum1_sum2[56],sum3_sum4[56],Coex2_1[55],Coex2_2[55],Coin3_1[55],Coin3_1[56],Coex3_1[56],sum1sum2_sum3sum4[56]); 
 compressor4_2 e1_57(sum1_sum2[57],sum3_sum4[57],Coex2_1[56],Coex2_2[56],Coin3_1[56],Coin3_1[57],Coex3_1[57],sum1sum2_sum3sum4[57]); 
 compressor4_2 e1_58(sum1_sum2[58],sum3_sum4[58],Coex2_1[57],Coex2_2[57],Coin3_1[57],Coin3_1[58],Coex3_1[58],sum1sum2_sum3sum4[58]); 
 compressor4_2 e1_59(sum1_sum2[59],sum3_sum4[59],Coex2_1[58],Coex2_2[58],Coin3_1[58],Coin3_1[59],Coex3_1[59],sum1sum2_sum3sum4[59]);  
 compressor4_2 e1_60(sum1_sum2[60],sum3_sum4[60],Coex2_1[59],Coex2_2[59],Coin3_1[59],Coin3_1[60],Coex3_1[60],sum1sum2_sum3sum4[60]);   
 compressor4_2 e1_61(sum1_sum2[61],sum3_sum4[61],Coex2_1[60],Coex2_2[60],Coin3_1[60],Coin3_1[61],Coex3_1[61],sum1sum2_sum3sum4[61]);
 compressor4_2 e1_62(sum1_sum2[62],sum3_sum4[62],Coex2_1[61],Coex2_2[61],Coin3_1[61],Coin3_1[62],Coex3_1[62],sum1sum2_sum3sum4[62]);
 compressor4_2 e1_63(sum1_sum2[63],sum3_sum4[63],Coex2_1[62],Coex2_2[62],Coin3_1[62],Coin3_1[63],Coex3_1[63],sum1sum2_sum3sum4[63]); //????????????
 
 
 /**********************************************************************************************************************************************************
 																					???
 ***********************************************************************************************************************************************************/

 compressor4_2 e2_0(sum1sum2_sum3sum4[0],1'b0,         1'b0,      1'b0,        1'b0,         Coin3_2[0],Coex3_2[0],sum_temp[0]);
 compressor4_2 e2_1(sum1sum2_sum3sum4[1],Coex3_1[0],1'b0,1'b0,Coin3_2[0],Coin3_2[1],Coex3_2[1],sum_temp[1]);
 compressor4_2 e2_2(sum1sum2_sum3sum4[2],Coex3_1[1],1'b0,1'b0,Coin3_2[1],Coin3_2[2],Coex3_2[2],sum_temp[2]);
 compressor4_2 e2_3(sum1sum2_sum3sum4[3],Coex3_1[2],1'b0,1'b0,Coin3_2[2],Coin3_2[3],Coex3_2[3],sum_temp[3]); 
 compressor4_2 e2_4(sum1sum2_sum3sum4[4],Coex3_1[3],1'b0,1'b0,Coin3_2[3],Coin3_2[4],Coex3_2[4],sum_temp[4]);
 compressor4_2 e2_5(sum1sum2_sum3sum4[5],Coex3_1[4],1'b0,1'b0,Coin3_2[4],Coin3_2[5],Coex3_2[5],sum_temp[5]); 
 compressor4_2 e2_6(sum1sum2_sum3sum4[6],Coex3_1[5],1'b0,1'b0,Coin3_2[5],Coin3_2[6],Coex3_2[6],sum_temp[6]); 
 compressor4_2 e2_7(sum1sum2_sum3sum4[7],Coex3_1[6],1'b0,1'b0,Coin3_2[6],Coin3_2[7],Coex3_2[7],sum_temp[7]); 
 compressor4_2 e2_8(sum1sum2_sum3sum4[8],Coex3_1[7],1'b0,1'b0,Coin3_2[7],Coin3_2[8],Coex3_2[8],sum_temp[8]); 
 compressor4_2 e2_9(sum1sum2_sum3sum4[9],Coex3_1[8],1'b0,1'b0,Coin3_2[8],Coin3_2[9],Coex3_2[9],sum_temp[9]);
 compressor4_2 e2_10(sum1sum2_sum3sum4[10],Coex3_1[9],1'b0,1'b0,Coin3_2[9],Coin3_2[10],Coex3_2[10],sum_temp[10]);
 compressor4_2 e2_11(sum1sum2_sum3sum4[11],Coex3_1[10],1'b0,1'b0,Coin3_2[10],Coin3_2[11],Coex3_2[11],sum_temp[11]);
 compressor4_2 e2_12(sum1sum2_sum3sum4[12],Coex3_1[11],1'b0,1'b0,Coin3_2[11],Coin3_2[12],Coex3_2[12],sum_temp[12]);
 compressor4_2 e2_13(sum1sum2_sum3sum4[13],Coex3_1[12],1'b0,1'b0,Coin3_2[12],Coin3_2[13],Coex3_2[13],sum_temp[13]); 
 compressor4_2 e2_14(sum1sum2_sum3sum4[14],Coex3_1[13],1'b0,1'b0,Coin3_2[13],Coin3_2[14],Coex3_2[14],sum_temp[14]);
 compressor4_2 e2_15(sum1sum2_sum3sum4[15],Coex3_1[14],1'b0,1'b0,Coin3_2[14],Coin3_2[15],Coex3_2[15],sum_temp[15]); 
 compressor4_2 e2_16(sum1sum2_sum3sum4[16],Coex3_1[15],1'b0,1'b0,Coin3_2[15],Coin3_2[16],Coex3_2[16],sum_temp[16]); 
 compressor4_2 e2_17(sum1sum2_sum3sum4[17],Coex3_1[16],1'b0,1'b0,Coin3_2[16],Coin3_2[17],Coex3_2[17],sum_temp[17]); 
 compressor4_2 e2_18(sum1sum2_sum3sum4[18],Coex3_1[17],1'b0,1'b0,Coin3_2[17],Coin3_2[18],Coex3_2[18],sum_temp[18]); 
 compressor4_2 e2_19(sum1sum2_sum3sum4[19],Coex3_1[18],1'b0,1'b0,Coin3_2[18],Coin3_2[19],Coex3_2[19],sum_temp[19]); 
 compressor4_2 e2_20(sum1sum2_sum3sum4[20],Coex3_1[19],1'b0,1'b0,Coin3_2[19],Coin3_2[20],Coex3_2[20],sum_temp[20]);
 compressor4_2 e2_21(sum1sum2_sum3sum4[21],Coex3_1[20],1'b0,1'b0,Coin3_2[20],Coin3_2[21],Coex3_2[21],sum_temp[21]);
 compressor4_2 e2_22(sum1sum2_sum3sum4[22],Coex3_1[21],1'b0,1'b0,Coin3_2[21],Coin3_2[22],Coex3_2[22],sum_temp[22]);
 compressor4_2 e2_23(sum1sum2_sum3sum4[23],Coex3_1[22],1'b0,1'b0,Coin3_2[22],Coin3_2[23],Coex3_2[23],sum_temp[23]); 
 compressor4_2 e2_24(sum1sum2_sum3sum4[24],Coex3_1[23],1'b0,1'b0,Coin3_2[23],Coin3_2[24],Coex3_2[24],sum_temp[24]);
 compressor4_2 e2_25(sum1sum2_sum3sum4[25],Coex3_1[24],1'b0,1'b0,Coin3_2[24],Coin3_2[25],Coex3_2[25],sum_temp[25]); 
 compressor4_2 e2_26(sum1sum2_sum3sum4[26],Coex3_1[25],1'b0,1'b0,Coin3_2[25],Coin3_2[26],Coex3_2[26],sum_temp[26]); 
 compressor4_2 e2_27(sum1sum2_sum3sum4[27],Coex3_1[26],1'b0,1'b0,Coin3_2[26],Coin3_2[27],Coex3_2[27],sum_temp[27]); 
 compressor4_2 e2_28(sum1sum2_sum3sum4[28],Coex3_1[27],1'b0,1'b0,Coin3_2[27],Coin3_2[28],Coex3_2[28],sum_temp[28]); 
 compressor4_2 e2_29(sum1sum2_sum3sum4[29],Coex3_1[28],1'b0,1'b0,Coin3_2[28],Coin3_2[29],Coex3_2[29],sum_temp[29]); 
 compressor4_2 e2_30(sum1sum2_sum3sum4[30],Coex3_1[29],sign16,1'b0,Coin3_2[29],Coin3_2[30],Coex3_2[30],sum_temp[30]);
 compressor4_2 e2_31(sum1sum2_sum3sum4[31],Coex3_1[30],1'b0,1'b0,Coin3_2[30],Coin3_2[31],Coex3_2[31],sum_temp[31]);
 compressor4_2 e2_32(sum1sum2_sum3sum4[32],Coex3_1[31],1'b0,1'b0,Coin3_2[31],Coin3_2[32],Coex3_2[32],sum_temp[32]);
 compressor4_2 e2_33(sum1sum2_sum3sum4[33],Coex3_1[32],1'b0,1'b0,Coin3_2[32],Coin3_2[33],Coex3_2[33],sum_temp[33]); 
 compressor4_2 e2_34(sum1sum2_sum3sum4[34],Coex3_1[33],1'b0,1'b0,Coin3_2[33],Coin3_2[34],Coex3_2[34],sum_temp[34]);
 compressor4_2 e2_35(sum1sum2_sum3sum4[35],Coex3_1[34],1'b0,1'b0,Coin3_2[34],Coin3_2[35],Coex3_2[35],sum_temp[35]); 
 compressor4_2 e2_36(sum1sum2_sum3sum4[36],Coex3_1[35],1'b0,1'b0,Coin3_2[35],Coin3_2[36],Coex3_2[36],sum_temp[36]); 
 compressor4_2 e2_37(sum1sum2_sum3sum4[37],Coex3_1[36],1'b0,1'b0,Coin3_2[36],Coin3_2[37],Coex3_2[37],sum_temp[37]); 
 compressor4_2 e2_38(sum1sum2_sum3sum4[38],Coex3_1[37],1'b0,1'b0,Coin3_2[37],Coin3_2[38],Coex3_2[38],sum_temp[38]); 
 compressor4_2 e2_39(sum1sum2_sum3sum4[39],Coex3_1[38],1'b0,1'b0,Coin3_2[38],Coin3_2[39],Coex3_2[39],sum_temp[39]); 
 compressor4_2 e2_40(sum1sum2_sum3sum4[40],Coex3_1[39],1'b0,1'b0,Coin3_2[39],Coin3_2[40],Coex3_2[40],sum_temp[40]);
 compressor4_2 e2_41(sum1sum2_sum3sum4[41],Coex3_1[40],1'b0,1'b0,Coin3_2[40],Coin3_2[41],Coex3_2[41],sum_temp[41]);
 compressor4_2 e2_42(sum1sum2_sum3sum4[42],Coex3_1[41],1'b0,1'b0,Coin3_2[41],Coin3_2[42],Coex3_2[42],sum_temp[42]);
 compressor4_2 e2_43(sum1sum2_sum3sum4[43],Coex3_1[42],1'b0,1'b0,Coin3_2[42],Coin3_2[43],Coex3_2[43],sum_temp[43]); 
 compressor4_2 e2_44(sum1sum2_sum3sum4[44],Coex3_1[43],1'b0,1'b0,Coin3_2[43],Coin3_2[44],Coex3_2[44],sum_temp[44]);
 compressor4_2 e2_45(sum1sum2_sum3sum4[45],Coex3_1[44],1'b0,1'b0,Coin3_2[44],Coin3_2[45],Coex3_2[45],sum_temp[45]); 
 compressor4_2 e2_46(sum1sum2_sum3sum4[46],Coex3_1[45],1'b0,1'b0,Coin3_2[45],Coin3_2[46],Coex3_2[46],sum_temp[46]); 
 compressor4_2 e2_47(sum1sum2_sum3sum4[47],Coex3_1[46],1'b0,1'b0,Coin3_2[46],Coin3_2[47],Coex3_2[47],sum_temp[47]); 
 compressor4_2 e2_48(sum1sum2_sum3sum4[48],Coex3_1[47],1'b0,1'b0,Coin3_2[47],Coin3_2[48],Coex3_2[48],sum_temp[48]); 
 compressor4_2 e2_49(sum1sum2_sum3sum4[49],Coex3_1[48],1'b0,1'b0,Coin3_2[48],Coin3_2[49],Coex3_2[49],sum_temp[49]); 
 compressor4_2 e2_50(sum1sum2_sum3sum4[50],Coex3_1[49],1'b0,1'b0,Coin3_2[49],Coin3_2[50],Coex3_2[50],sum_temp[50]);   
 compressor4_2 e2_51(sum1sum2_sum3sum4[51],Coex3_1[50],1'b0,1'b0,Coin3_2[50],Coin3_2[51],Coex3_2[51],sum_temp[51]);
 compressor4_2 e2_52(sum1sum2_sum3sum4[52],Coex3_1[51],1'b0,1'b0,Coin3_2[51],Coin3_2[52],Coex3_2[52],sum_temp[52]);
 compressor4_2 e2_53(sum1sum2_sum3sum4[53],Coex3_1[52],1'b0,1'b0,Coin3_2[52],Coin3_2[53],Coex3_2[53],sum_temp[53]); 
 compressor4_2 e2_54(sum1sum2_sum3sum4[54],Coex3_1[53],1'b0,1'b0,Coin3_2[53],Coin3_2[54],Coex3_2[54],sum_temp[54]);
 compressor4_2 e2_55(sum1sum2_sum3sum4[55],Coex3_1[54],1'b0,1'b0,Coin3_2[54],Coin3_2[55],Coex3_2[55],sum_temp[55]); 
 compressor4_2 e2_56(sum1sum2_sum3sum4[56],Coex3_1[55],1'b0,1'b0,Coin3_2[55],Coin3_2[56],Coex3_2[56],sum_temp[56]); 
 compressor4_2 e2_57(sum1sum2_sum3sum4[57],Coex3_1[56],1'b0,1'b0,Coin3_2[56],Coin3_2[57],Coex3_2[57],sum_temp[57]); 
 compressor4_2 e2_58(sum1sum2_sum3sum4[58],Coex3_1[57],1'b0,1'b0,Coin3_2[57],Coin3_2[58],Coex3_2[58],sum_temp[58]); 
 compressor4_2 e2_59(sum1sum2_sum3sum4[59],Coex3_1[58],1'b0,1'b0,Coin3_2[58],Coin3_2[59],Coex3_2[59],sum_temp[59]);  
 compressor4_2 e2_60(sum1sum2_sum3sum4[60],Coex3_1[59],1'b0,1'b0,Coin3_2[59],Coin3_2[60],Coex3_2[60],sum_temp[60]);   
 compressor4_2 e2_61(sum1sum2_sum3sum4[61],Coex3_1[60],1'b0,1'b0,Coin3_2[60],Coin3_2[61],Coex3_2[61],sum_temp[61]);
 compressor4_2 e2_62(sum1sum2_sum3sum4[62],Coex3_1[61],1'b0,1'b0,Coin3_2[61],Coin3_2[62],Coex3_2[62],sum_temp[62]);
 compressor4_2 e2_63(sum1sum2_sum3sum4[63],Coex3_1[62],1'b0,1'b0,Coin3_2[62],Coin3_2[63],Coex3_2[63],sum_temp[63]); //????????????
 




  assign SUM[0]=sum_temp[0];
  assign {carry1,SUM[1]}=sum_temp[1]+Coex3_2[0];  //M=2
  assign {carry2,SUM[4:2]}=(carry1==1'b0)? (sum_temp[4:2]+Coex3_2[3:1]):(sum_temp[4:2]+Coex3_2[3:1]+1'b1);//3
  assign {carry3,SUM[8:5]}=(carry2==1'b0)? (sum_temp[8:5]+Coex3_2[7:4]):(sum_temp[8:5]+Coex3_2[7:4]+1'b1);//4
  assign {carry4,SUM[13:9]}=(carry3==1'b0)? (sum_temp[13:9]+Coex3_2[12:8]):(sum_temp[13:9]+Coex3_2[12:8]+1'b1);//5
  assign {carry5,SUM[19:14]}=(carry4==1'b0)? (sum_temp[19:14]+Coex3_2[18:13]):(sum_temp[19:14]+Coex3_2[18:13]+1'b1);//6
  assign {carry6,SUM[26:20]}=(carry5==1'b0)? (sum_temp[26:20]+Coex3_2[25:19]):(sum_temp[26:20]+Coex3_2[25:19]+1'b1);//7
  assign {carry7,SUM[34:27]}=(carry6==1'b0)? (sum_temp[34:27]+Coex3_2[33:26]):(sum_temp[34:27]+Coex3_2[33:26]+1'b1);//8
  assign {carry8,SUM[43:35]}=(carry7==1'b0)? (sum_temp[43:35]+Coex3_2[42:34]):(sum_temp[43:35]+Coex3_2[42:34]+1'b1);//9
  assign {carry9,SUM[53:44]}=(carry8==1'b0)? (sum_temp[53:44]+Coex3_2[52:43]):(sum_temp[53:44]+Coex3_2[52:43]+1'b1);//10
  assign {carry10,SUM[63:54]}=(carry9==1'b0)? (sum_temp[63:54]+Coex3_2[62:53]):(sum_temp[63:54]+Coex3_2[62:53]+1'b1);//10







 
 
 endmodule