`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2023 19:05:52
// Design Name: 
// Module Name: generate_16_bit_adder
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


module generate_16_bit_adder(a,b,c_in,g_16,p_16,sum);
input[15:0] a,b;
input c_in;
output[15:0] sum;
output g_16,p_16;

wire[3:0] g,p;
create_G_P_Siganl_For_each_bit one(a[3:0],b[3:0],c_in,g[0],p[0],sum[3:0]);
create_G_P_Siganl_For_each_bit two(a[7:4],b[7:4],c1,g[1],p[1],sum[7:4]);
create_G_P_Siganl_For_each_bit three(a[11:8],b[11:8],c2,g[2],p[2],sum[11:8]);
create_G_P_Siganl_For_each_bit four(a[15:12],b[15:12],c3,g[3],p[3],sum[15:12]);

four_bit_lookahead_carry_generator gen(g,p,c_in,g_16,p_16,c1,c2,c3,c4);


endmodule
