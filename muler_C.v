`timescale 1ns / 1ps



module muler_c(
input a,
input b,
input rst_n,
output reg z
    );
always @(*)
    begin
        if(rst_n)
            z<=1'b0;
         else
             z<=(a^b)?z:a;
     end

endmodule
