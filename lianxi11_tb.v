`timescale 1ns/1ns
module lianxi11_tb();
reg clk,ngreset;
wire hsyn,vsyn; 

lianxi11 lianxi_11(.clk(clk),.ngreset(ngreset),
	.hsyn(hsyn),.vsyn(vsyn));

always #41.5 clk = ~clk;

initial begin
	clk=0;
	ngreset =1;
	# 500;
	ngreset =0;
	# 300;
	ngreset =1;
end
endmodule

