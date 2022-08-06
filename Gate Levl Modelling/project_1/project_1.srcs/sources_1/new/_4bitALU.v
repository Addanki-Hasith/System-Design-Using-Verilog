`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2021 21:08:30
// Design Name: 
// Module Name: _4bitALU
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


module _4bitALU(a,b,sel,op);
input [7:0] a,b;
output reg [7:0] op;
input [3:0] sel;
reg [1:0] A,B;
initial A=a;
initial B=b;

always@(a or b or sel)
begin
case(sel)
    4'b0000: op=a&b;
    4'b0001: op=a|b;
    4'b0010: op=a^b;
    4'b0011: op=~a^b;
    4'b0100: op=a+b;
    4'b0101: op=a-b;
    4'b0110: op={b[6:0],1'b0};
    4'b0111: op={a[6:0],1'b0};
    4'b1000: op={1'b0,b[7:1]};
     4'b1001: op={1'b0,a[7:1]};
     4'b1010: op=^a;
     4'b1011: op=^b;
     4'b1100: op=a&&b;
     4'b1101: op=a||b;
     4'b1110: op=a<b?1'b1:1'b0;
     4'b1111: op=a^b^{8'b10101010};
endcase
end
endmodule
