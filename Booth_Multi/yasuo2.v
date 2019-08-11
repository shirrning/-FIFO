`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/22 20:28:21
// Design Name: 
// Module Name: yasuo2
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

module    yasuo2(j00,j01,j10,j11,j20,j21,j00_s,j00_c,j10_s,j10_c);
         
input   [21:0] j00,j10;
input   [19:0] j01,j11,j20;
input   [17:0] j21;

output  [23:0] j00_s,j00_c;
output  [22:0] j10_s;
output  [19:0] j10_c;

wire    [23:0] j00_s,j00_c;
wire    [22:0] j10_s;
wire    [19:0] j10_c;

//j00_s,j00_c

assign j00_s[23]=j10[17];
assign j00_s[2]=j00[2];
assign j00_s[1]=j00[1];
assign j00_s[0]=j00[0];
assign j00_c[23]=j10[21];
assign j00_c[22]=j10[20];
assign j00_c[21]=j10[19];
assign j00_c[20]=j10[18];

add3  a1 (.a(1'b0), .b(j01[19]), .c(j10[16]), .si(j00_s[22]), .ci(j00_c[19]));
add3  a2 (.a(j00[21]), .b(j01[18]), .c(j10[15]), .si(j00_s[21]), .ci(j00_c[18]));
add3  a3 (.a(j00[20]), .b(j01[17]), .c(j10[14]), .si(j00_s[20]), .ci(j00_c[17]));
add3  a4 (.a(j00[19]), .b(j01[16]), .c(j10[13]), .si(j00_s[19]), .ci(j00_c[16]));
add3  a5 (.a(j00[18]), .b(j01[15]), .c(j10[12]), .si(j00_s[18]), .ci(j00_c[15]));
add3  a6 (.a(j00[17]), .b(j01[14]), .c(j10[11]), .si(j00_s[17]), .ci(j00_c[14]));
add3  a7 (.a(j00[16]), .b(j01[13]), .c(j10[10]), .si(j00_s[16]), .ci(j00_c[13]));
add3  a8 (.a(j00[15]), .b(j01[12]), .c(j10[9]),  .si(j00_s[15]), .ci(j00_c[12]));
add3  a9 (.a(j00[14]), .b(j01[11]), .c(j10[8]),  .si(j00_s[14]), .ci(j00_c[11]));
add3  a10(.a(j00[13]), .b(j01[10]), .c(j10[7]),  .si(j00_s[13]), .ci(j00_c[10]));
add3  a11(.a(j00[12]), .b(j01[9]),  .c(j10[6]),  .si(j00_s[12]), .ci(j00_c[9]));
add3  a12(.a(j00[11]), .b(j01[8]),  .c(j10[5]),  .si(j00_s[11]), .ci(j00_c[8]));
add3  a13(.a(j00[10]), .b(j01[7]),  .c(j10[4]),  .si(j00_s[10]), .ci(j00_c[7]));
add3  a14(.a(j00[9]),  .b(j01[6]),  .c(j10[3]),  .si(j00_s[9]),  .ci(j00_c[6]));
add3  a15(.a(j00[8]),  .b(j01[5]),  .c(j10[2]),  .si(j00_s[8]),  .ci(j00_c[5]));
add3  a16(.a(j00[7]),  .b(j01[4]),  .c(j10[1]),  .si(j00_s[7]),  .ci(j00_c[4]));
add3  a17(.a(j00[6]),  .b(j01[3]),  .c(j10[0]),  .si(j00_s[6]),  .ci(j00_c[3]));
add3  a18(.a(j00[5]),  .b(j01[2]),  .c(1'b0),      .si(j00_s[5]),  .ci(j00_c[2]));
add3  a19(.a(j00[4]),  .b(j01[1]),  .c(1'b0),      .si(j00_s[4]),  .ci(j00_c[1]));
add3  a20(.a(j00[3]),  .b(j01[0]),  .c(1'b0),      .si(j00_s[3]),  .ci(j00_c[0]));

//j10_s,j10_c

assign j10_s[2]=j11[2];
assign j10_s[1]=j11[1];
assign j10_s[0]=j11[0];

add3  a21(.a(1'b0), .b(j20[19]), .c(j21[16]), .si(j10_s[22]), .ci(j10_c[19]));
add3  a22(.a(1'b0), .b(j20[18]), .c(j21[15]), .si(j10_s[21]), .ci(j10_c[18]));
add3  a23(.a(1'b0), .b(j20[17]), .c(j21[14]), .si(j10_s[20]), .ci(j10_c[17]));
add3  a24(.a(j11[19]), .b(j20[16]), .c(j21[13]), .si(j10_s[19]), .ci(j10_c[16]));
add3  a25(.a(j11[18]), .b(j20[15]), .c(j21[12]), .si(j10_s[18]), .ci(j10_c[15]));
add3  a26(.a(j11[17]), .b(j20[14]), .c(j21[11]), .si(j10_s[17]), .ci(j10_c[14]));
add3  a27(.a(j11[16]), .b(j20[13]), .c(j21[10]), .si(j10_s[16]), .ci(j10_c[13]));
add3  a28(.a(j11[15]), .b(j20[12]), .c(j21[9]),  .si(j10_s[15]), .ci(j10_c[12]));
add3  a29(.a(j11[14]), .b(j20[11]), .c(j21[8]),  .si(j10_s[14]), .ci(j10_c[11]));
add3  a30(.a(j11[13]), .b(j20[10]), .c(j21[7]),  .si(j10_s[13]), .ci(j10_c[10]));
add3  a31(.a(j11[12]), .b(j20[9]),  .c(j21[6]),  .si(j10_s[12]), .ci(j10_c[9]));
add3  a32(.a(j11[11]), .b(j20[8]),  .c(j21[5]),  .si(j10_s[11]), .ci(j10_c[8]));
add3  a33(.a(j11[10]), .b(j20[7]),  .c(j21[4]),  .si(j10_s[10]), .ci(j10_c[7]));
add3  a34(.a(j11[9]),  .b(j20[6]),  .c(j21[3]),  .si(j10_s[9]),  .ci(j10_c[6]));
add3  a35(.a(j11[8]),  .b(j20[5]),  .c(j21[2]),  .si(j10_s[8]),  .ci(j10_c[5]));
add3  a36(.a(j11[7]),  .b(j20[4]),  .c(j21[1]),  .si(j10_s[7]),  .ci(j10_c[4]));
add3  a37(.a(j11[6]),  .b(j20[3]),  .c(j21[0]),  .si(j10_s[6]),  .ci(j10_c[3]));
add3  a38(.a(j11[5]),  .b(j20[2]),  .c(1'b0),      .si(j10_s[5]),  .ci(j10_c[2]));
add3  a39(.a(j11[4]),  .b(j20[1]),  .c(1'b0),      .si(j10_s[4]),  .ci(j10_c[1]));
add3  a40(.a(j11[3]),  .b(j20[0]),  .c(1'b0),      .si(j10_s[3]),  .ci(j10_c[0]));

endmodule
