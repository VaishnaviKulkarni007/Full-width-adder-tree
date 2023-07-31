`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2022 19:06:07
// Design Name: 
// Module Name: adder_pipeline
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


module adder_pipeline
( input wire clk, reset,
  input wire [7:0] A,B,C,D,E,F,G,H,
  output wire [10:0] sum);
  
reg [8:0] s1_reg,s1_next,s2_reg,s2_next,s3_reg,s3_next,s4_reg,s4_next;
reg [9:0] s5_reg,s5_next,s6_reg,s6_next;
reg [10:0] f1_reg,f1_next;


always@ (posedge clk,posedge reset)
if(reset)
 begin

s1_reg<=0;
s2_reg<=0;
s3_reg<=0;
s4_reg<=0;
s5_reg<=0;
s6_reg<=0;
f1_reg<=0;


end
else begin

s1_reg<=s1_next;
s2_reg<=s2_next;
s3_reg<=s3_next;
s4_reg<=s4_next;
s5_reg<=s5_next;
s6_reg<=s6_next;
f1_reg<=f1_next;



end



always@*
begin
s1_next = s1_reg;
s2_next = s2_reg;
s3_next = s3_reg;
s4_next = s4_reg;
s5_next = s5_reg;
s6_next = s6_reg;
f1_next = f1_reg;
s1_next = A+B;
s2_next = C+D;
s3_next = E+F;
s4_next = G+H;
s5_next = s1_reg + s2_reg;
s6_next = s3_reg + s4_reg;
f1_next = s5_reg + s6_reg;
end

assign sum = f1_reg;

endmodule
