`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 18:36:07
// Design Name: 
// Module Name: mux_4x1_using_buf_tb
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


module mux_4x1_using_buf_tb();
    reg  i0,i1,i2,i3;
    reg [1:0] s;
    wire y;
    
    mux_4x1_using_buf mux(.y(y),.s(s),.a(i0),.b(i1),.c(i2),.d(i3));
    
    initial begin
    s = 2'b00;  i0 = 1'd1;  i1 = 1'd0;  i2 = 1'd1;  i3 = 1'd0;
    #5 s = 2'b01;
    #5 s = 2'b10;
    #5 s = 2'b11;
    #5 $finish;
    end
endmodule
