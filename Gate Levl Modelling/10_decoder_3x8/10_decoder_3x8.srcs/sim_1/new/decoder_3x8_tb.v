`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 01:55:23
// Design Name: 
// Module Name: decoder_3x8_tb
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


module decoder_3x8_tb();
    reg [2:0] x;
    reg en;
    wire [7:0] y;
    
    decoder_3x8 dec(.y(y),.x(x),.en(en));
    initial begin
    en = 0;
    x = 3'd0; 
    #5 x = 3'd1;
    #5 x = 3'd2;
    #5 x = 3'd3;
    #5 x = 3'd4;
    #5 x = 3'd5;
    #5 x = 3'd6;
    #5 x = 3'd7;
    #5 x = 3'd0;
    en = 1;
    x = 3'd0; 
    #5 x = 3'd1;
    #5 x = 3'd2;
    #5 x = 3'd3;
    #5 x = 3'd4;
    #5 x = 3'd5;
    #5 x = 3'd6;
    #5 x = 3'd7;
    #5 x = 3'd0;
    
    #5 $finish;
    end
endmodule
