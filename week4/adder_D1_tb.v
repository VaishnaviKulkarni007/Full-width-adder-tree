`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2022 10:28:48
// Design Name: 
// Module Name: adder_D1_tb
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


module adder_D1_tb;

reg [7:0] a,b,c,d,e,f,g,h;
reg clk, reset;
wire [10:0]sum;

adder_D1 uut(.A(a),.B(b),.C(c),.D(d),.E(e),.F(f),.G(g),.H(h),.sum(sum),.clk(clk),.reset(reset));

always
begin
clk=1'b0;
#20;
clk =1'b1;
#20;
end

initial 
begin
reset=1'b1;

#25;
reset=1'b0;



a=8'b0000_0001;
b=8'b0000_0010;
c=8'b0000_0011;
d=8'b0000_0100;
e=8'b0000_0101;
f=8'b0000_0110;
g=8'b0000_0111;
h=8'b0000_1000;

#25;
#140;



$stop;
end
endmodule


