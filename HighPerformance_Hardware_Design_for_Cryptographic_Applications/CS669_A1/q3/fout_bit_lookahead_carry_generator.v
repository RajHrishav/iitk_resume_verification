`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2023 19:58:49
// Design Name: 
// Module Name: create_G_P_signal_4_bits
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


module four_bit_lookahead_carry_generator(g,p,c_in,G_4,P_4,c1,c2,c3,c4);//4 bit lookahead carry generator
input [3:0] p,g;
input c_in;
output G_4,P_4,c1,c2,c3,c4;

assign G_4 = g[3] | (g[2] & p[3]) | (g[1] & p[2] & p[3]) | (g[0] & p[3] & p[2] & p[1]);
assign P_4 = p[0] & p[1] & p[2] & p[3]; 

assign c1 = g[0] | (c_in & p[0]);
assign c2 = g[1] | (g[0] & p[1]) | (c_in & p[0] & p[1]);
assign c3 = g[2] | (g[1] & g[2]) | (g[0] & p[1] & p[2]) | (c_in & p[0] & p[1] & p[2]);
assign c4 = g[3] | (c3 & p[3]);

endmodule
