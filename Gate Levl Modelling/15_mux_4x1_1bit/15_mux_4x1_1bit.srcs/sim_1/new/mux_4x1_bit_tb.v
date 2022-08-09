`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 17:58:00
// Design Name: 
// Module Name: mux_4x1_bit_tb
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


module mux_4x1_bit_tb();
    reg a,b,c,d;
    reg [1:0] s;
    wire y;
    
    mux_4x1_1bit mux(.a(a),.b(b),.c(c),.d(d),.s(s),.y(y));
    initial begin
    a = 1'b1;  b = 1'b0;  c = 1'b1;  d = 1'b0;
    s = 2'b00;
    #5 s = 2'b01;
    #5 s = 2'b10;
    #5 s = 2'b11;
    #5 $finish;
    end
    
endmodule
