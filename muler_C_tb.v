`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/17 21:08:09
// Design Name: 
// Module Name: muler_C_tb
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


module muler_c_tb;
reg a,b,rst_n;
wire z;
initial begin
a=1'b0;
b=1'b0;
rst_n=1'b0;
#10;
a=1'b0;
b=1'b1;
#10;
a=1'b1;
b=1'b0;
#10;
a=1'b1;
b=1'b1;
end

muler_c mu(
.a(a)
,.b(b)
,.z(z)
,.rst_n(rst_n)
);
endmodule
