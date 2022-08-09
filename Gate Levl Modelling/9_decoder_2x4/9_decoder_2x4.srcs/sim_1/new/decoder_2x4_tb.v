`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 12:41:07
// Design Name: 
// Module Name: decoder_2x4_tb
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


module decoder_2x4_tb();
    reg [1:0] x;
    reg en;
    wire [3:0] y;
    decoder_2x4 dec(.y(y),.en(en),.x(x));
    initial begin
    x = 2'd0;   en = 0;
    #5 x = 2'd1;
    #5 x = 2'd2;
    #5 x = 2'd3;
    #5 x = 2'd0;   en = 1;
    #5 x = 2'd1;
    #5 x = 2'd2;
    #5 x = 2'd3;
    #5 $finish;
    end
endmodule
