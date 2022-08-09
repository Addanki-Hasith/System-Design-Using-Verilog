`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 14:01:38
// Design Name: 
// Module Name: multiplier_4x3bit
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


module multiplier_4x3bit(
    output [6:0] C,
    input [2:0] A,
    input [3:0] B
    );
    wire [11:0] W;
    and (C[0],A[0],B[0]);
    and (W[1],A[0],B[1]);
    and (W[2],A[0],B[2]);
    and (W[3],A[0],B[3]);
    and (W[4],A[1],B[0]);
    and (W[5],A[1],B[1]);
    and (W[6],A[1],B[2]);
    and (W[7],A[1],B[3]);
    and (W[8],A[2],B[0]);
    and (W[9],A[2],B[1]);
    and (W[10],A[2],B[2]);
    and (W[11],A[2],B[3]);
    
    wire cin;
    wire temp;
    not (temp,A[0]);
    and (cin,temp,A[0]);
    wire [3:0] sum0;
    RCA_4bit RCA1({sum0[2:0],C[1]},sum0[3],{1'b0,W[3:1]},W[7:4],cin);
    RCA_4bit RCA2(C[5:2],C[6],sum0,W[11:8],cin);
//    RCA_4bit RCA(C[4],C[3:0],B,B,cin);
endmodule
