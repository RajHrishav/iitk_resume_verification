`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2023 01:57:28
// Design Name: 
// Module Name: 64_bit_adder
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


module ques3_64_bit_adder(a,b,clk,sum,carry );

parameter W=64;
input [W-1:0] a,b;
input clk;
output reg [W-1:0] sum;
output reg carry;

reg [W-1:0] a_reg,b_reg;
wire [W-1:0] sum_wire;
wire cout_wire;


always@(posedge clk)
begin
a_reg<=a;
b_reg<=b;
sum<=sum_wire;
carry<=cout_wire;
end

carry_lookahead_adder dut(a_reg,b_reg,1'd0,sum_wire,cout_wire);

endmodule

