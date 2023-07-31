`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2022 03:58:53
// Design Name: 
// Module Name: adder_xor_tb
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


module adder_xor_tb;

reg [7:0] a,b,c,d,e,f,g,h;
reg clk, reset;
wire [10:0]sum;

adder_xor_pipeline uut(.A(a),.B(b),.C(c),.D(d),.E(e),.F(f),.G(g),.H(h),.sum(sum),.clk(clk),.reset(reset));

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

reset=1'b1;

#25;

reset=1'b0;



a=8'b0000_0000;
b=8'b0000_0001;
c=8'b0100_0010;
d=8'b0100_0110;
e=8'b0010_1100;
f=8'b0101_0000;
g=8'b0010_0000;
h=8'b0011_1111;
#25;
#140;


$stop;
end
endmodule

