`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2023 16:27:18
// Design Name: 
// Module Name: monto
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


module monto(a,b,clk,rst,out,done);
input [254:0]a,b;
input clk,rst;
reg [254:0 ]p= 255'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED;
output [254:0]out;
output done;
reg[254:0]u;
integer counter;
wire [254:0]t,t1,t2,t3,u_temp,u_temp2;
reg [254:0] t4;

// multiplier


assign t={255{t4[0]}};
assign t1=t&b;
assign u_temp=u+t1;

assign t2={255{u_temp[0]}};
assign t3=t2&p;
assign u_temp2=u_temp+t3;
assign u_temp3=u_temp2>>1;

assign out=(u>=p)?(u-p):u;

assign done=(counter==255)?1:0;



always @(posedge clk)
begin
if(rst)
begin
u<=0;
counter<=0;
t4<=a;
end
else
begin
u<=u_temp3;
counter=counter+1;
end
end
endmodule


