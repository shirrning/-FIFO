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
