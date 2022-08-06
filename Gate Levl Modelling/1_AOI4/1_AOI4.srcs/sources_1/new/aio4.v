`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 19:10:54
// Design Name: 
// Module Name: aio4
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


module aio4(
    input a,
    input b,
    input c,
    input d,
    output out
    );
    wire w1,w2;
    and A1(w1,a,b);
    and A2(w2,c,d);
    nor A3(out,w1,w2);
endmodule
