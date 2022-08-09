`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 16:14:46
// Design Name: 
// Module Name: encoder_3x8bit
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


module encoder_3x8bit(
    output [2:0] y,
    input [7:0] x,
    input en
    );
    wire [2:0] w;
    or (w[0],x[1],x[3],x[5],x[7]);
    or (w[1],x[2],x[3],x[6],x[7]);
    or (w[2],x[4],x[5],x[6],x[7]);
    
    bufif1 (y[2],w[2],en);
    bufif1 (y[1],w[1],en);
    bufif1 (y[0],w[0],en);
endmodule
