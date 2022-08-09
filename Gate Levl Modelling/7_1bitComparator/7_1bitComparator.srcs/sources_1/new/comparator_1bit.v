`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 00:53:01
// Design Name: 
// Module Name: comparator_1bit
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


module comparator_1bit(
    output E,
    output G,
    output L,
    input A,
    input B
    );
    
    wire Ao,Bo;
    not (Ao,A);
    not (Bo,B);
    xnor (E,A,B);
    and (G,A,Bo);
    and (L,Ao,B);
endmodule
