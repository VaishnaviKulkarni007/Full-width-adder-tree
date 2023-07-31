`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2022 09:51:42
// Design Name: 
// Module Name: adder_D2
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


module adder_D2(
input wire [7:0] A,B,C,D,E,F,G,H,
input wire clk,reset,
output wire [10:0]sum );
  reg [8:0] s1_reg,s1_next,s2_reg,s2_next,s3_reg,s3_next,s4_reg,s4_next;
  reg [9:0] s5_reg,s5_next,s6_reg,s6_next;
  reg [10:0] f1_reg,f1_next;
always@(posedge clk,posedge reset)
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
else
begin
s1_reg<=s1_next;
s2_reg<=s2_next;
s3_reg<=s3_next;
s4_reg<=s4_next;
s5_reg<=s5_next;
s6_reg<=s6_next;
f1_reg<=f1_next;
end

reg [7:0]c ;
reg [6:0]mux0;
reg [6:0]mux1;
reg [6:0]sel;





always@*
begin
s1_next = s1_reg;
s2_next = s2_reg;
s3_next = s3_reg;
s4_next = s4_reg;
s5_next = s5_reg;
s6_next = s6_reg;
f1_next = f1_reg;


mux1[0]=1'b0;
mux0[0]=A[2]|B[2];
sel[0]=A[2]&B[2];
c[0]=(sel[0]? mux1[0]:mux0[0])|(A[1]&B[1]);
s1_next = {(A[7:3]+B[7:3]+sel[0]),c[0],(A[1]|B[1]),1'b1};

mux1[1]=1'b0;
mux0[1]=C[2]|D[2];
sel[1]=C[2]&D[2];
c[1]=(sel[1]? mux1[1]:mux0[1])|(C[1]&D[1]);
s2_next = {C[7:3]+D[7:3]+sel[1],c[1],(C[1]|D[1]),1'b1};



mux1[2]=1'b0;
mux0[2]=E[2]|F[2];
sel[2]=E[2]&F[2];
c[2]=(sel[2]? mux1[2]:mux0[2])|(E[1]&F[1]);
s3_next = {E[7:3]+F[7:3]+sel[2],c[2],(E[1]|F[1]),1'b1};

mux1[3]=1'b0;
mux0[3]=G[2]|H[2];
sel[3]=G[2]&H[2];
c[3]=(sel[3]? mux1[3]:mux0[3])|(G[1]&H[1]);
s4_next = {G[7:3]+H[7:3]+sel[3],c[3],(G[1]|H[1]),1'b1};

mux1[4]=1'b0;
mux0[4]=s1_reg[2]|s2_reg[2];
sel[4]=s1_reg[2]&s2_reg[2];
c[4]=(sel[4]? mux1[4]:mux0[4])|(s1_reg[1]&s2_reg[1]);
s5_next = {s1_reg[8:3]+s2_reg[8:3]+sel[4],c[4],(s1_reg[1]|s2_reg[1]),(s1_reg[1]? s1_reg[1]:(s2_reg[1]?   (s1_reg[1] ^ s2_reg[1]): s2_reg[1] ))};

mux1[5]=1'b0;
mux0[5]=s1_reg[2]|s2_reg[2];
sel[5]=s1_reg[2]&s2_reg[2];
c[5]=(sel[5]? mux1[5]:mux0[5])|(s1_reg[1]&s2_reg[1]);
s6_next = {s3_reg[8:3]+s4_reg[8:3]+sel[5],c[5],(s3_reg[1]|s4_reg[1]),(s3_reg[1]? s3_reg[1]:(s4_reg[1]?  (s3_reg[1] ^ s4_reg[1]): s4_reg[1]))};

mux1[6]=1'b0;
mux0[6]=s5_reg[2]|s6_reg[2];
sel[6]=s5_reg[2]&s6_reg[2];
c[6]=(sel[6]? mux1[6]:mux0[6])|(s5_reg[1]&s6_reg[1]);
f1_next = {s5_reg[9:3]+s6_reg[9:3]+sel[6],c[6],(s5_reg[1]|s6_reg[1]),(s5_reg[1]? s5_reg[1]:(s6_reg[1]?    (s5_reg[1] ^ s6_reg[1]): s6_reg[1]))};
end






assign sum = f1_reg;
endmodule



