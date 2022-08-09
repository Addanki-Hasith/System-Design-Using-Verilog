`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2022 01:42:23
// Design Name: 
// Module Name: Adder_Subtractor
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


module Adder_Subtractor(
    output [3:0] sum,
    output carry,
    input [3:0] a,
    input [3:0] b,
    input M
    );
    
    wire p,p2,cout1;
    wire [3:0] t;
    wire [3:0] q;
    wire [3:0] r;
    wire [3:0] g;
    
    xor b3not(t[3],b[3],M);
    xor b2not(t[2],b[2],M);
    xor b1not(t[1],b[1],M);
    xor b0not(t[0],b[0],M);
    
    not cout1not(p2,cout1);
    and pval(p,M,p2);
    assign g = 4'd0; // can be done by gate level modelling too
    
    xor q3not(r[3],q[3],p);
    xor q2not(r[2],q[2],p);
    xor q1not(r[1],q[1],p);
    xor q0not(r[0],q[0],p);
    
    
    // instantiating 4-bit RCA ADDERs
    RCA_4bit RCA1(q,cout1,a,t,M);
    RCA_4bit RCA2(sum,carry,r,g,p);
    
    
endmodule
