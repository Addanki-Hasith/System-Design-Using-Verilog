`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 16:53:41
// Design Name: 
// Module Name: priority_encoder_4x2bit_tb
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


module priority_encoder_4x2bit_tb();
    wire [1:0] y;
    wire en;
    reg [3:0] x;
    
    
    priority_encoder_4x2 pr_en(.x(x),.y(y),.en(en));
    initial begin
    x = 4'd0;
    #5 x = 4'd1;
    #5 x = 4'd2;
    #5 x = 4'd3;
    #5 x = 4'd4;
    #5 x = 4'd5;
    #5 x = 4'd6;
    #5 x = 4'd7;
    #5 x = 4'd8;
    #5 x = 4'd9;
    #5 x = 4'd10;
    #5 x = 4'd11;
    #5 x = 4'd12;
    #5 x = 4'd13;
    #5 x = 4'd14;
    #5 x = 4'd15;
  
    #5 $finish;
    end
endmodule
