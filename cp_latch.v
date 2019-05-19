`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/16 20:42:17
// Design Name: 
// Module Name: cp_latch
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


module cp_latch(
    c,
    p,
    data_in,
    rst_n,
    data_out
    );
    parameter data_width=3;
    input c;
    input p;
    input [data_width-1:0]data_in;
    input rst_n;
    output reg [data_width-1:0] data_out;
    
    always@(*)
    begin
        if(!rst_n)
            data_out <= 3'b000;
        else
            data_out = (c^p)?data_out:data_in;
    end
endmodule
