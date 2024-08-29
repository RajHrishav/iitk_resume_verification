module testbench;

reg[254:0] in1, in2;
reg clk, rst;
wire[254:0] out;


multiplier_255bit dut(in1, in2, clk, rst, out);
initial
begin
 #30 $monitor($time,"%h",out);
end
 // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Reset generation
    initial begin
        rst = 1;
      #50 rst = 0;
    end

    // Test case 1
    initial begin
        // Input values
        in1 = 255'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec;
       in2 = 255'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec;
    

 
  end
endmodule
