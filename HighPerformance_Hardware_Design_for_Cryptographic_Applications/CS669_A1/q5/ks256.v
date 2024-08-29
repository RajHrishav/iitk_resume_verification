module ks256(a,b,prod,prod_red);
//module ks256(a,b,prod);

input  [255:0] a, b;
output [511:0] prod;
output [232:0] prod_red;
wire   [511:0] prod;
wire [232:0] prod_red;
wire [255:0] t0,t1,t2,temp;
wire[511:0] x,y,z;
wire[511:0] t;

ks128 m0(a[127:0],b[127:0],t0);
ks128 m1(a[255:128],b[255:128], t1);
ks128 m2(a[127:0]^b[127:0],a[255:128]^b[255:128],t2);
assign temp = t0^t1^t2;

assign x = {256'b0,t0};
assign y = {256'b0,t1};
assign z = {256'b0,t2};

assign y = y<<128;
assign z = z<<256;

assign prod = ((x^y)^z);
assign prod_red=(((prod[232:0]^{1'b0,prod[464:233]})^{prod[391:233],73'b0})^{159'b0,prod[464:392]})^{85'b0,prod[464:392],74'b0};

	
endmodule