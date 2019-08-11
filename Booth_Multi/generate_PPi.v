`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/22 21:20:35
// Design Name: 
// Module Name: generate_PPi
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


module generate_PPi(X,Y_in,X_out,sign,E);

input [31:0] X;
input [2:0]  Y_in;

output reg[32:0] X_out;
output sign;
output reg E;


wire [31:0] X_in_inverse;


assign X_in_inverse=~X;//x???



always @(Y_in or X)
  begin
    case(Y_in)
      3'b000: X_out=33'b0;
      3'b001: X_out={X[31],X[31:0]};
      3'b010: X_out={X[31],X[31:0]};
      3'b011: X_out={X[31:0],1'b0};
      3'b100: X_out=~{X[31:0],1'b0};
      3'b101: X_out={X_in_inverse[31],X_in_inverse[31:0]};
      3'b110: X_out={X_in_inverse[31],X_in_inverse[31:0]};
      3'b111: X_out=33'b1111_1111_1111_1111_1111_1111_1111_1111_1;
      default: ;
    endcase
      
  end
  
assign sign=Y_in[2];///////////////

//assign E=~(sign^X[31]);

always@(*)
begin
  case(Y_in)
    3'b000:E=1;
    3'b001:E=~X[31];
    3'b010:E=~X[31];
    3'b011:E=~X[31];
    3'b100:E=X[31];
    3'b101:E=X[31];
    3'b110:E=X[31];
    3'b111:E=0;
  endcase
end

endmodule
