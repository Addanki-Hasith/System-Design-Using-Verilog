`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2022 00:31:28
// Design Name: 
// Module Name: RCA_4bit_tb
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


module RCA_4bit_tb();
    reg [3:0] a,b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    
    RCA_4bit RCA(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
    
    initial begin
    a = 4'd4;   b  = 4'd5;  cin = 1'b1;
    #4 a = 4'd4;    b = 4'd10;
    #4 cin = 1'b0;
    #4 a = 4'd2;
    #4 b = 4'd2;
    #4 a = 4'd15;   b = 4'd15;
    #4 cin = 1'b1;
    #4 $finish;   
    end
    
endmodule
