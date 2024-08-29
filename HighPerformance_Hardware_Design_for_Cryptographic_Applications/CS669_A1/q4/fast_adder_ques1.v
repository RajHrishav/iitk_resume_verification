`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2023 14:14:41
// Design Name: 
// Module Name: fast_adder_ques1
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


module fast_adder_ques1(a,b,cin,clk,sum,carry,operation);

parameter W=64;
input [W-1:0] a,b;
input clk,operation,cin;
output  [W-1:0] sum;
output  carry;

wire [W-1:0] a_reg,b_reg;
wire [W-1:0] sum_wire;
wire cout_wire;

assign b_reg=(operation)?(~b+1):b;
assign a_reg=a;
assign sum=sum_wire;
assign carry=cout_wire;

/*always@(posedge clk)
begin
a_reg<=a;
b_reg<=(operation)?(~b+1):b;
sum<=sum_wire;
carry<=cout_wire;
end*/

 carry_chain_sum_old dut(a_reg,b_reg,cin,sum_wire,cout_wire);

//assign {cout_wire,sum_wire}=a_reg+b_reg;
endmodule
