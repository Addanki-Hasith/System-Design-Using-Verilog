`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 20:26:23
// Design Name: 
// Module Name: squarer_3b_tb
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


module squarer_3b_tb();
// inputs
reg [2:0] a;
// output
wire [5:0] b;

squarer_3b sq(.a(a),.out(b));

initial 
begin
a = 3'b000;
#10 a = 3'b001;
#10 a = 3'b010;
#10 a = 3'b011;
#10 a = 3'b100;
#10 a = 3'b101;
#10 a = 3'b110;
#10 a = 3'b111;

#10 $finish;

end
endmodule
