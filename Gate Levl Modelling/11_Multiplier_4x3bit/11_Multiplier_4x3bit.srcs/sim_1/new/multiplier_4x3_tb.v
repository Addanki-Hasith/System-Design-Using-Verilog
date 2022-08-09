`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 14:13:32
// Design Name: 
// Module Name: multiplier_4x3_tb
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


module multiplier_4x3_tb();
    reg [2:0] A;
    reg [3:0] B;
    wire [6:0] C;
    
    multiplier_4x3bit mult(.C(C),.A(A),.B(B));
    
    initial begin
    A = 3'd0;   B = 4'd0;
    #5 B = 4'd1;
    #5 B = 4'd2;
    #5 B = 4'd3;
    #5 B = 4'd4;
    #5 B = 4'd5;
    #5 B = 4'd6;
    #5 B = 4'd7;
    #5 A = 3'd1;   B = 4'd0;
    #5 B = 4'd1;
    #5 B = 4'd2;
    #5 B = 4'd3;
    #5 B = 4'd4;
    #5 B = 4'd5;
    #5 B = 4'd6;
    #5 B = 4'd7;
    #5 A = 3'd2;   B = 4'd0;
    #5 B = 4'd1;
    #5 B = 4'd2;
    #5 B = 4'd3;
    #5 B = 4'd4;
    #5 B = 4'd5;
    #5 B = 4'd6;
    #5 B = 4'd7;
    #5 A = 3'd3;   B = 4'd0;
    #5 B = 4'd1;
    #5 B = 4'd2;
    #5 B = 4'd3;
    #5 B = 4'd4;
    #5 B = 4'd5;
    #5 B = 4'd6;
    #5 B = 4'd7;
    
    #5 $finish;
    end
endmodule
