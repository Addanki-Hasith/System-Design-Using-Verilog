`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 17:14:43
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
    output [2:0] y,
    input [1:0] s,
    input [2:0] I0,
    input [2:0] I1,
    input [2:0] I2,
    input [2:0] I3
    );
    
    wire [1:0] w;
    not (w[0],s[0]);
    not (w[1],s[1]);
    wire  a,b,c,d;
    and (a,w[1],w[0]);
    and (b,w[1],s[0]);
    and (c,s[1],w[0]);
    and (d,s[1],s[0]);
    
    wire [2:0] p,q,r,t;
    and (p[0],a,I0[0]);
    and (q[0],b,I1[0]);
    and (r[0],c,I2[0]);
    and (t[0],d,I3[0]);
    
    and (p[1],a,I0[1]);
    and (q[1],b,I1[1]);
    and (r[1],c,I2[1]);
    and (t[1],d,I3[1]);
    
    and (p[2],a,I0[2]);
    and (q[2],b,I1[2]);
    and (r[2],c,I2[2]);
    and (t[2],d,I3[2]);
    
    or (y[0],p[0],q[0],r[0],t[0]);
    or (y[1],p[1],q[1],r[1],t[1]);
    or (y[2],p[2],q[2],r[2],t[2]);
    
    
    
endmodule
