`timescale 1ns / 1ps

module stage_comblne_tb;
parameter data_width = 3;
reg req_in,ack_in;
wire req_out,ack_out;
reg rst_n;
reg [data_width-1:0] data_in;
wire [data_width-1:0] data_out;
initial begin
    rst_n = 0;
    #10
    rst_n = 1;
    req_in = 1;
    ack_in = 0;
    data_in = 1;
    #10
    req_in = 1;
    ack_in = 1;
    data_in = 2;
    #10
    req_in = 0;
    ack_in = 1;
    data_in = 3;
    #10
    req_in = 0;
    ack_in = 0;
    data_in = 4;
    
end

stage_combine uut(
        .rst_n(rst_n),
        .req_in(req_in),
        .ack_in(ack_in),
        .data_in(data_in),
        .req_out(req_out),
        .ack_out(ack_out),
        .data_out(data_out) 
    );
endmodule
