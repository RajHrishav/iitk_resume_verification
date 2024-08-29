module ks128(a,b,prod);

input  [127:0] a, b;
output [255:0] prod;
wire   [255:0] prod;
wire [127:0] t0,t1,t2,temp;
wire[255:0] x,y,z;
wire[255:0] t;
 

ks64 m0(a[63:0],b[63:0],t0);
ks64 m1(a[127:64],b[127:64], t1);
ks64 m2(a[63:0]^b[63:0],a[127:64]^b[127:64],t2);
assign temp = t0^t1^t2;

assign x = {128'b0,t0};
assign y = {128'b0,t1};
assign z = {128'b0,t2};

assign y = y<<64;
assign z = z<<128;

assign prod = ((x^y)^z);


	
endmodule