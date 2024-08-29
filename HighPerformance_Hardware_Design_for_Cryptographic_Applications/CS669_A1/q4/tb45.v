
`timescale 1ns / 1ps

module topmodule_tb;

    // Inputs
    reg [255:0] a;
    reg [255:0] b;
    reg rst;
    reg clk;

    // Outputs
    wire [255:0] sum;
    wire carry1,carry2;

    // Instantiate the design under test (DUT)
    topmodule dut (
        .a(a),
        .b(b),
        .rst(rst),
        .clk(clk),
        .sum(sum),
        .carry1(carry1),
        .carry2(carry2)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Reset generation
    initial begin
        rst = 1;
        #10 rst = 0;
    end

    // Test case 1
    initial begin
        // Input values
        a = 256'h0000000000000000000000000000000000000000000000000000000000000101;
        b = 256'h0000000000000000000000000000000000000000000000000000000000000001;
       #20 $display("Sum: %h", sum);
        // Expected output
       // assert(sum === 256'h0000000000000000000000000000000000000000000000000000000000000000);
       // assert(carry === 1'b0);
       
    end

    // Test case 2
//    initial begin
//        // Input values
//        a = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
//        b = 256'h0000000000000000000000000000000000000000000000000000000000000001;
//        #20 $display("Sum: %h, Carry: %b", sum, carry);
//        // Expected output
//        //assert(sum === 256'h0000000000000000000000000000000000000000000000000000000000000000);
//        //assert(carry === 1'b1);
//    end

    // Test case 3
//    initial begin
//        // Input values
//        a = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
//        b = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
//        #20 $display("Sum: %h, Carry: %b", sum, carry);
//        // Expected output
//        //assert(sum === 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE);
//        //assert(carry === 1'b1);
//    end

    // Test case 4
//    initial begin
//        // Input values
//        a = 256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED;
//        b = 256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED;
//        #20 $display("Sum: %h, Carry: %b", sum, carry);
//        // Expected output
//        //assert(sum === 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA);
//        //assert(carry === 1'b0);
//    end

endmodule