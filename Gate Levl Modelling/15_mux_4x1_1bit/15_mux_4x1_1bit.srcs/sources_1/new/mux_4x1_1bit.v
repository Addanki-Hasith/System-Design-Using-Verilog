`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 17:46:04
// Design Name: 
// Module Name: mux_4x1_1bit
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


module mux_4x1_1bit(
    output y,
    input [1:0] s,
    input a,
    input b,
    input c,
    input d
    );
    
    wire [1:0] w;
    not (w[0],s[0]);
    not (w[1],s[1]);
    
    wire [3:0] p;
    and (p[0],w[1],w[0],a);
    and (p[1],w[1],s[0],b);
    and (p[2],s[1],w[0],c);
    and (p[3],s[1],s[0],d);
    or (y,p[0],p[1],p[2],p[3]);
endmodule
