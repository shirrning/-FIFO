`timescale 1ns / 1ps

module cp_latch_tb;
    reg a,b,data_in;
    wire z;
    initial begin
        a = 1'b0;
        b = 1'b0;
        data_in = 1'b1;
        #10;
        a = 1'b0;
        b = 1'b1;
        data_in = 1'b0;
        #10;    
        a = 1'b1;
        b = 1'b0;
        data_in = 1'b1;
        #10;    
        a = 1'b1;
        b = 1'b1;
        data_in = 1'b0;
        #10;  
        data_in = 1'b1;
    end
    
    cp_latch uut(
        .c(a),
        .p(b),
        .data_in(data_in),
        .data_out(z)
    );    
endmodule
