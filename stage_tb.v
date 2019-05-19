`timescale 1ns / 1ps

module stage_tb;
parameter data_width = 3;
reg valid_in,ack_in;
wire valid_out,ack_out;
reg rst_n;
reg [data_width-1:0] data_in;
wire [data_width-1:0] data_out;
initial begin
    rst_n = 0;
    #10
    rst_n = 1;
    valid_in = 1;
    ack_in = 0;
    data_in = 1;
    #10
    valid_in = 1;
    ack_in = 0;
    data_in = 2;
    #10
    valid_in = 1;
    ack_in = 1;
    data_in = 3;
    #10
    valid_in = 0;
    ack_in = 1;
    data_in = 4;
    
end

stage uut(
        .rst_n(rst_n),
        .valid_in(valid_in),
        .ack_in(ack_in),
        .data_in(data_in),
        .valid_out(valid_out),
        .ack_out(ack_out),
        .data_out(data_out) 
    );
endmodule
