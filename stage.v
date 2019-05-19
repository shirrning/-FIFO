`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/16 21:00:07
// Design Name: 
// Module Name: stage
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


module stage(
    rst_n,
    valid_in,
    ack_in,
    data_in,
    data_out,
    ack_out,
    valid_out
    );
    parameter data_width=3;
    input rst_n;
    input valid_in;
    input ack_in;
    input [data_width-1:0] data_in;
    output [data_width-1:0] data_out;
    output ack_out;
    output valid_out;
    wire z;
    muller_c m(
        .rst_n(rst_n),
        .a(valid_in),
        .b(~ack_in),
        .z(z)
    );
    assign valid_out = z;
    assign ack_out = z;
    cp_latch c(
        .rst_n(rst_n),
        .c(z),
        .p(ack_in),
        .data_in(data_in),
        .data_out(data_out)
    );
endmodule
