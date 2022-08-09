`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 01:42:05
// Design Name: 
// Module Name: decoder_2x4
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


module decoder_2x4(
    output [3:0] y,
    input [1:0] x,
    input en
    );
    wire w0,w1;
    wire a1,a2,a3,a4;
    not (w0,x[0]);
    not (w1,x[1]);
    and (a1,w0,w1);
    and (a2,w1,x[0]);
    and (a3,x[1],w0);
    and (a4,x[1],x[0]);
    
    and (y[0],en,a1);
    and (y[1],en,a2);
    and (y[2],en,a3);
    and (y[3],en,a4);
    
endmodule
