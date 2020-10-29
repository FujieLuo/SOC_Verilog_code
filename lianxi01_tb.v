`timescale 1ns/1ns
module lianxi01_tb();
reg clk,q_init;
parameter CYCLE = 20;
lianxi01 uut(.clk(clk),.q_init(q_init),.q0(q0),.q1(q1),.q2(q2));
initial begin
	clk = 0;
	forever
	#(CYCLE/2)
	clk =~clk;
end
initial begin
	# 1
	q_init = 1;
end
endmodule
