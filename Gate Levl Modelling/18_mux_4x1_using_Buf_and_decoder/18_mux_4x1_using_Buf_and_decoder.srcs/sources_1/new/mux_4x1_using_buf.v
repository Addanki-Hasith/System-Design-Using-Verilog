`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 18:29:37
// Design Name: 
// Module Name: mux_4x1_using_buf
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


module mux_4x1_using_buf(
    output y,
    input [1:0] s,
    input a,
    input b,
    input c,
    input d
    );
    wire [3:0] w;
    wire vc;
    wire n;
    not (n,s[0]);
    or (vc,n,s[0]);
    decoder_2x4 dec(w,s,vc);
    bufif1 (y,a,w[0]);
    bufif1 (y,b,w[1]);
    bufif1 (y,c,w[2]);
    bufif1 (y,d,w[3]);
endmodule
