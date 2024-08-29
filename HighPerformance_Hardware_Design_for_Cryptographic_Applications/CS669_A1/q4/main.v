`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2023 09:43:28 PM
// Design Name: 
// Module Name: topmodule
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
module topmodule(a,b,rst,clk,sum,carry1,carry2);
    input [255:0]a; input [255:0]b; input rst;
    input clk;
    output reg[255:0]sum;
    output wire carry1,carry2;
    reg cin1,cin2;
    reg[255:0]storage1,storage2;
    reg[255:0]a_reg,b_reg;
    reg [255:0 ]prime = 256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED;
    reg [2:0]counter;
    reg [255:0]p_reg;
    wire [63:0] storage1_wire, storage2_wire;

    fast_adder_ques1 dut(a_reg[63:0],b_reg[63:0],cin1,clk,storage1_wire,carry1,0);
    fast_adder_ques1 dut1(p_reg[63:0],storage1[255:192],cin2,clk,storage2_wire,carry2,1);

    always@(posedge clk)
    begin
        if(rst)
        begin
            a_reg<=a;
            b_reg<=b;
            p_reg<=prime;
            storage1<=0;
            storage2<=0;
            cin1=1'd0;
            cin2=1'd0;
            counter<=3'b000;
         end
         else 
         begin
             a_reg<=a_reg>>64;
             b_reg<=b_reg>>64;
             cin1<=carry1;
             cin2<=carry2;
             storage1<= {storage1_wire,storage1[255:64]};
             storage2<={storage2_wire,storage2[255:64]};
             
             if(counter>1) 
             begin
                p_reg<=p_reg>>64;
             end
            counter<=counter+1;
            if(counter==3'b100)
            begin
                sum<=storage2[255]?storage1:storage2;
            end
         end
    end     
endmodule
