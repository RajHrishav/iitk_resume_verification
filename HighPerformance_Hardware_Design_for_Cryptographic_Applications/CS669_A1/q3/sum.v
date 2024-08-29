`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2023 18:38:23
// Design Name: 
// Module Name: sum
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


module sum(a,b,c_in,sum,c_out);
input a,b,c_in;
output sum,c_out;
assign {c_out,sum} = a+b+ c_in;
endmodule
