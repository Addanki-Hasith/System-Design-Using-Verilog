`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 01:18:56
// Design Name: 
// Module Name: comparator_2bit_tb
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


module comparator_2bit_tb();
    reg [1:0] a,b;
    wire E,G,L;
    
    comparator_2bit cp(.E(E),.G(G),.L(L),.A(a),.B(b));
    
    initial begin
    a = 2'd0;   b = 2'd0;
    #5 b = 2'd1;
    #5 b = 2'd2;
    #5 b = 2'd3;
    #5 a = 2'd1;   b = 2'd0;
    #5 b = 2'd1;
    #5 b = 2'd2;
    #5 b = 2'd3;
    #5 a = 2'd2;   b = 2'd0;
    #5 b = 2'd1;
    #5 b = 2'd2;
    #5 b = 2'd3;
    #5 a = 2'd3;   b = 2'd0;
    #5 b = 2'd1;
    #5 b = 2'd2;
    #5 b = 2'd3;
    #5 $finish;
    end
    
endmodule
