`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 20:14:02
// Design Name: 
// Module Name: squarer_3b
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


module squarer_3b(
    input [2:0] a,
    output [5:0] out
    );
    
    wire w1,w2,w3;
    wire a0,a1,a2;
    assign a0 = a[0],
           a1 = a[1],
           a2 = a[3];
    wire g1,g2;
    not n1(w1,a0);
    not n2(w2,a1);
    //not (w3,a[2]);
    
    buf h1(out[0],a0);
    and h2(out[1],a0,1'b0);
    and h3(out[2],a1,w1);
    xor h4(g1,a2,a1);
    and h5(out[3],g1,a0);
    or h6(g2,a0,w2);
    and h7(out[4],g2,a2);
    and h8(out[5],a2,a1);
endmodule
