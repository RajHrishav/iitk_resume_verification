`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2023 12:36:51
// Design Name: 
// Module Name: testbench_top_module
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


module testbench_top_module;
reg[63:0] a;
reg[63:0] b;
reg clk;
wire[63:0] sum;
wire carry;

//ques3_64_bit_adder(a,b,clk,sum,carry )
ques3_64_bit_adder dut(.a(a), .b(b), .clk(clk), .sum(sum), .carry(carry));

initial begin
 $monitor("Time =%d,  a=%b, b=%b, sum=%b, carry=%b",$time,a,b,sum,carry);
 end
 
initial begin
clk=0;
end

  always #5 clk = ~clk;
  
  initial begin
 
  a=64'h0000000000000111;
  b=64'h0000000000000011;
  end

    initial begin
    #500
    $finish;
    end


endmodule
