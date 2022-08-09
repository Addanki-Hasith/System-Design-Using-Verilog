`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 00:55:30
// Design Name: 
// Module Name: comparator_1bit_tb
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


module comparator_1bit_tb();
    reg a,b;
    wire e,g,l;
    
    comparator_1bit cp(.A(a),.B(b),.E(e),.G(g),.L(l));
    initial begin
    a = 1'b0;   b = 1'b0;
    #5 a = 1'b1;
    #5 a = 1'b0;    b = 1'b1;
    #5 a = 1'b1;    b = 1'b0;
    #5 b = 1'b1;
    #5 $finish;
    end
endmodule
