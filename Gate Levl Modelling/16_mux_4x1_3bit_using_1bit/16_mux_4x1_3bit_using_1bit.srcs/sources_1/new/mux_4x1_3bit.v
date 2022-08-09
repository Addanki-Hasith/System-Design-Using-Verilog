`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 18:07:07
// Design Name: 
// Module Name: mux_4x1_3bit
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


module mux_4x1_3bit(
    output [2:0] y,
    input [1:0] s,
    input [2:0] I0,
    input [2:0] I1,
    input [2:0] I2,
    input [2:0] I3
    );
    mux_4x1_1bit mux1(y[0],s,I0[0],I1[0],I2[0],I3[0]);
    mux_4x1_1bit mux2(y[1],s,I0[1],I1[1],I2[1],I3[1]);
    mux_4x1_1bit mux3(y[2],s,I0[2],I1[2],I2[2],I3[2]);
    
    
endmodule
