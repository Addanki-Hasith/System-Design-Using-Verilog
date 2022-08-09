`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 18:10:54
// Design Name: 
// Module Name: mux_4x1_3bit_tb
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


module mux_4x1_3bit_tb();
    reg [2:0] i0,i1,i2,i3;
    reg [1:0] s;
    wire [2:0] y;
    
    mux_4x1_3bit mux(.y(y),.s(s),.I0(i0),.I1(i1),.I2(i2),.I3(i3));
    
    initial begin
    s = 2'b00;  i0 = 3'd3;  i1 = 3'd4;  i2 = 3'd2;  i3 = 3'd7;
    #5 s = 2'b01;
    #5 s = 2'b10;
    #5 s = 2'b11;
    #5 $finish;
    end
endmodule
