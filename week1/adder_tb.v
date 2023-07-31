`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2022 11:59:19
// Design Name: 
// Module Name: adder_tb
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


module adder_tb;

reg [7:0] a,b,c,d,e,f,g,h;

wire [10:0]sum;

adder uut(.A(a),.B(b),.C(c),.D(d),.E(e),.F(f),.G(g),.H(h),.sum(sum));

initial 
begin




a=8'b0000_0001;
b=8'b0000_0010;
c=8'b0000_0011;
d=8'b0000_0100;
e=8'b0000_0101;
f=8'b0000_0110;
g=8'b0000_0111;
h=8'b0000_1000;

#25;
$stop;
end
endmodule


