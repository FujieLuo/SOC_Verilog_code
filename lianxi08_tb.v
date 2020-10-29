`timescale 1ns/1ns
module lianxi08_tb();
reg clk,a;
wire b;

lianxi08 lianxi_08(.clk(clk),.a(a),.b(b));

always #4 clk =~clk;

initial begin
	clk = 0;
	a = 0;
	#13
	a = 1;
	#34
	a =0;
	# 17
	a =1;
	#21
	a = 0;
end

initial
    begin
        $dumpfile("lianxi08_b.vcd");
        $dumpvars ;
    end
endmodule
