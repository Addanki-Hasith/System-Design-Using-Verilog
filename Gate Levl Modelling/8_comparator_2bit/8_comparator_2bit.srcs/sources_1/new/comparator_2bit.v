`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 01:05:35
// Design Name: 
// Module Name: comparator_2bit
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


module comparator_2bit(
    output E,
    output G,
    output L,
    input [1:0] A,
    input [1:0] B
    );
    wire [1:0] Eq,Gr,Ls;
    wire w1,w2;
    comparator_1bit cp1(Eq[0],Gr[0],Ls[0],A[0],B[0]);
    comparator_1bit cp2(Eq[1],Gr[1],Ls[1],A[1],B[1]);
    and (E,Eq[0],Eq[1]);
    and (w1,Gr[0],Eq[1]);
    or (G,w1,Gr[1]);
    and (w2,Ls[0],Eq[1]);
    or (L,Ls[1],w2);
    
endmodule
