`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2022 00:18:11
// Design Name: 
// Module Name: RCA_4bit
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


module RCA_4bit(
    output [3:0] sum,
    output cout,
    input [3:0] a,
    input [3:0] b,
    input cin
    );
    
    wire [3:0] carry;
    assign carry[0] = cin;
    
    // instantiating 4 FULL ADDERs
    full_adder FA1(sum[0],carry[1],a[0],b[0],carry[0]);
    full_adder FA2(sum[1],carry[2],a[1],b[1],carry[1]);
    full_adder FA3(sum[2],carry[3],a[2],b[2],carry[2]);
    full_adder FA4(sum[3],cout,a[3],b[3],carry[3]);
endmodule
