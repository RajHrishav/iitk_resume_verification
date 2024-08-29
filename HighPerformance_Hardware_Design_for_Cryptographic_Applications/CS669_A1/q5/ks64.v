module ks64(a,b,prod);

input  [63:0] a, b;
output [127:0] prod;
wire   [127:0] prod;
wire [63:0] t0,t1,t2,temp;
wire[127:0] x,y,z;
wire[127:0] t;
 

ks32 m0(a[31:0],b[31:0],t0);
ks32 m1(a[63:32],b[63:32], t1);
ks32 m2(a[31:0]^b[31:0],a[63:32]^b[63:32],t2);
assign temp = t0^t1^t2;

assign x = {64'b0,t0};
assign y = {64'b0,t1};
assign z = {64'b0,t2};

assign y = y<<32;
assign z = z<<64;

assign prod = ((x^y)^z);


	
endmodule