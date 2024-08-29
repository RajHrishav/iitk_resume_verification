module ks32(a,b,prod);

input  [31:0] a, b;
output [63:0] prod;
wire   [63:0] prod;
wire [30:0] t0,t1,t2,temp;
wire[63:0] x,y,z;
wire[63:0] t;
 

mul m0(a[15:0],b[15:0],t0);
mul m1(a[31:16],b[31:16], t1);
mul m2(a[15:0]^b[15:0],a[31:16]^b[31:16],t2);
assign temp = t0^t1^t2;

assign x = {32'b0,1'b0,t0};
assign y = {32'b0,1'b0,t1};
assign z = {32'b0,1'b0,t2};

assign y = y<<16;
assign z = z<<32;

//   assign t=x^y;
	assign prod=x^y^z;




	
endmodule