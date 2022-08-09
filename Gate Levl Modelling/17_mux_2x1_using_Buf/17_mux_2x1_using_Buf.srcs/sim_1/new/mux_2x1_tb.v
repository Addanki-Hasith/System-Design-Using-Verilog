`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 18:18:01
// Design Name: 
// Module Name: mux_2x1_tb
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


module mux_2x1_tb();
    reg a,b;
    reg s;
    wire y;
    mux_2x1 mux(.a(a),.b(b),.s(s),.y(y));
    
    initial begin
    a = 1'b0;   b = 1'b1;
    s = 1'b0;
    #5 s = 1'b1;
    #5 s = 1'b0;    a = 1'b1;
    #5 s = 1'b1;    b = 1'b0;
    #5 $finish;
    end
endmodule
