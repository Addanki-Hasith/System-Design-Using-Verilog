`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2021 21:32:38
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;
wire [7:0] op;
reg [7:0] a,b;
reg [3:0] sel;
_4bitALU alu(a,b,sel,op);
initial
begin
sel=4'd0;a=8'b1101_0011;b=8'b0101_1011;
#1 sel=4'd11;
#1 sel=4'd9;
#1 sel=4'd13;
#1 sel=4'd8;
#1 sel=4'd2;
#1 $finish;
end 
endmodule
