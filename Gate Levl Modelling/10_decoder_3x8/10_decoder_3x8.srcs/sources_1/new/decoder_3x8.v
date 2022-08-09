`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 01:47:50
// Design Name: 
// Module Name: decoder_3x8
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


module decoder_3x8(
    output [7:0] y,
    input [2:0] x,
    input en
    );
    
    wire [7:0] w;
    wire x2o;
    not (x2o,x[2]);
    
    decoder_2x4 dec1(w[3:0],x[1:0],x2o);
    decoder_2x4 dec2(w[7:4],x[1:0],x[2]);
    
    and (y[0],w[0],en);
    and (y[1],w[1],en);
    and (y[2],w[2],en);
    and (y[3],w[3],en);
    and (y[4],w[4],en);
    and (y[5],w[5],en);
    and (y[6],w[6],en);
    and (y[7],w[7],en);
    
    
    
endmodule
