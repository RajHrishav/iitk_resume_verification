`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2023 22:47:44
// Design Name: 
// Module Name: testbench
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


module testbench;
reg[63:0] a;
reg[63:0] b;
reg clk;
reg operation;
wire[63:0] sum;
wire carry;

fast_adder_ques1 dut(.a(a), .b(b), .clk(clk), .sum(sum), .carry(carry),.operation(operation));

initial begin
 $monitor("Time =%d,  a=%b, b=%b, sum=%b, carry=%b",$time,a,b,sum,carry);
 end
 
initial begin
clk=0;
end

  always #5 clk = ~clk;
  
  initial begin
 
  a=64'h0000000000000111;
  b=64'h0000000000000010;
  operation=1; //For subtraction
  end

    initial begin
    #500
    $finish;
    end


endmodule

       