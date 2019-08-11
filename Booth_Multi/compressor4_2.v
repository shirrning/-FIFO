`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/22 21:19:49
// Design Name: 
// Module Name: compressor4_2
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


module compressor4_2(i1,i2,i3,i4,Ci,Coin,Coex,s);

input wire i1,i2,i3,i4,Ci;

output wire Coin,Coex,s;

wire s_temp;

assign {Coin,s_temp}=i1+i2+i3;

assign {Coex,s}=Ci+s_temp+i4;


endmodule
