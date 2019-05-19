`timescale 1ns / 1ps

module stage_all(
	rst_n,
	ack_in,
	req_in,
	data_in,
	ack_out,
	req_out,
	data_out,
);
	parameter data_with = 3;
	input rst_n,ack_in,req_in;
	input [data_with-1:0]data_in;
	output ack_out,req_out;
	output [data_with-1:0] data_out;
	
	wire req1,req2;
	wire ack1,ack2;
	wire [data_with-1:0]data1;
	wire [data_with-1:0]data2;
	
	stage_combine s1(
		.rst_n(rst_n),
		.req_in(req_in),
		.ack_in(ack1),
		.data_in(data_in),
		.req_out(req1),
		.ack_out(ack_out),
		.data_out(data1)
	);
	stage_combine s2(
		.rst_n(rst_n),
		.ack_in(ack2),
		.req_in(req1),
		.data_in(data1),
		.req_out(req2),
		.ack_out(ack1),
		.data_out(data2)
	);
	stage_combine s3(
		.rst_n(rst_n),
		.req_in(req2),
		.ack_in(ack_in),
		.data_in(data2),
		.req_out(req_out),
		.ack_out(ack2),
		.data_out(data_out)
	);
	
endmodule 