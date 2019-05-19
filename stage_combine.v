`timescale 1ns / 1ps

module stage_combine(
    rst_n,
    req_in,
    ack_in,
    data_in,
    data_out,
    ack_out,
    req_out
    );
    parameter data_width=3;
    input rst_n;
    input req_in;
    input ack_in;
    input [data_width-1:0] data_in;
    output [data_width-1:0] data_out;
    output ack_out;
    output req_out;
    wire req;
	wire ack;
    wire [data_width-1:0] data;
    stage s(
        .rst_n(rst_n),
        .req_in(req_in),
        .ack_in(ack),
        .data_in(data_in),
        .req_out(req),
        .ack_out(ack_out),
        .data_out(data) 
    );
    
    stage sn(
        .rst_n(rst_n),
        .req_in(req),
        .ack_in(ack_in),
        .data_in(data),
        .req_out(req_out),
        .ack_out(ack),
        .data_out(data_out)
    );
endmodule
