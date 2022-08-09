`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 00:34:15
// Design Name: 
// Module Name: Adder_Subtractor_tb2
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


module Adder_Subtractor_tb2();
    reg [3:0] a,b;
    reg M;
    wire [3:0] s;
    wire c;
    Adder_Subtractor AS(.a(a),.b(b),.carry(c),.M(M),.sum(s));
    
    initial begin
    M = 0;  a = 4'd10;  b = 4'd3;
    #5 a = 4'd15;
    #5 M = 1;
    #5 a = 4'd2;
    #5 b = 4'd10;
    #5 M = 0;
    #5 $finish;
    end
endmodule
