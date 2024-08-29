`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2023 19:57:07
// Design Name: 
// Module Name: create_G_P_Signal_For_each_bit
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2023 19:44:31
// Design Name: 
// Module Name: create_G_P_Signal
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


module create_G_P_Siganl_For_each_bit(a,b,c_in,g_4,p_4,sum);

input [3:0] a,b;
input c_in;
output g_4,p_4;
output [3:0] sum;


wire[3:0] g,p;
//Generating g signal
assign g[0] = a[0] & b[0];
assign g[1] = a[1] & b[1];
assign g[2] = a[2] & b[2];
assign g[3] = a[3] & b[3];

//Generation p signal
assign p[0] = a[0] | b[0];
assign p[1] = a[1] | b[1];
assign p[2] = a[2] | b[2];
assign p[3] = a[3] | b[3];

assign g_4 = g[3] | (g[2] & p[3]) | (g[1] & p[2] & p[3]) | (g[0] & p[3] & p[2] & p[1]);
assign p_4 = p[0] & p[1] & p[2] & p[3]; 


//Computer sum for each bit
wire[3:0] c_out;
sum s0(a[0],b[0],c_in,sum[0],c_out[0]);
sum s1(a[1],b[1],c_out[0],sum[1],c_out[1]);
sum s2(a[2],b[2],c_out[1],sum[2],c_out[2]);
sum s3(a[3],b[3],c_out[2],sum[3],c_out[3]);


endmodule

