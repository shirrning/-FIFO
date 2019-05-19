`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/16 21:09:30
// Design Name: 
// Module Name: stage_combine
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


module stage_combine(
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
    wire valid,ack;
    wire [data_width-1:0] data;
    stage s(
        .rst_n(rst_n),
        .valid_in(valid_in),
        .ack_in(ack),
        .data_in(data_in),
        .valid_out(valid),
        .ack_out(ack_out),
        .data_out(data) 
    );
    
    stage sn(
        .rst_n(rst_n),
        .valid_in(valid),
        .ack_in(ack_in),
        .data_in(data),
        .valid_out(valid_out),
        .ack_out(ack),
        .data_out(data_out)
    );
endmodule
