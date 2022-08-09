`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 16:24:47
// Design Name: 
// Module Name: encoder_8x3bit_tb
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


module encoder_8x3bit_tb();
    reg [7:0] x;
    wire [2:0] y;
    reg en;
    
    encoder_3x8bit enc(.y(y),.x(x),.en(en));
    
    initial begin
    x = 7'b0000000;   en = 0;
    #5 x = 7'b0000010;
    #5 x = 7'b0000100;
    #5 x = 7'b0001000;
    #5 x = 7'b0010000;
    #5 x = 7'b0100000;
    #5 x = 7'b1000000;
    #5 x = 7'd0000001;
    #5 x = 8'b10000000;
    #5  x = 7'b0000000;   en = 1;
    #5 x = 7'b0000010;
    #5 x = 7'b0000100;
    #5 x = 7'b0001000;
    #5 x = 7'b0010000;
    #5 x = 7'b0100000;
    #5 x = 7'b1000000;
    #5 x = 8'b10000000;
    #5 x = 7'd0000001;
    #5 $finish;
    end
endmodule
