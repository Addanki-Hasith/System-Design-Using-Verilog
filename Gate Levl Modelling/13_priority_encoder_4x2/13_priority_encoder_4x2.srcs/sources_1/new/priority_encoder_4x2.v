`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 16:43:40
// Design Name: 
// Module Name: priority_encoder_4x2
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


module priority_encoder_4x2(
    output [1:0] y,
    input [3:0] x,
    output en
    );
    wire [3:0] w;
    not (w[0],x[0]);
    not (w[1],x[1]);
    not (w[2],x[2]);
    not (w[3],x[3]);
    wire [1:0] h;
    and (h[0],w[3],w[2],x[1]);
    and (h[1],w[3],x[2]);
    
    wire [1:0] p;
    or (p[0],h[0],x[3]);
    or (p[1],h[1],x[3]);
    and (en,w[0],w[1],w[2],w[3]);
    bufif0 (y[0],p[0],en);
    bufif0 (y[1],p[1],en);
  
endmodule
