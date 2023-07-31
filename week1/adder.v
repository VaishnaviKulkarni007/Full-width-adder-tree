`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2022 11:58:42
// Design Name: 
// Module Name: adder
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


module adder
(
  input wire [7:0] A,B,C,D,E,F,G,H,
  output wire [10:0] sum);

  
reg [8:0] s1,s2,s3,s4;
reg [9:0] s5,s6;
reg[10:0]f1;

always @(A,B,C,D,E,F,G,H,s5,s6,f1)
begin
s1 = A + B;
s2 = C + D;
s3 = E + F;
s4 = G + H;
s5=s1+s2;
s6=s3+s4;
f1=s5+s6;
end


assign sum = f1;
endmodule 