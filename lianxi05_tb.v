`timescale 1ns/1ns
module lianxi05_tb();
reg	clk,reset;
wire	dout;
parameter CYCLE =10;
parameter RST_TIME =2;
lianxi05 lianxi_05(.clk(clk),.reset(reset),.dout(dout));

initial begin
	clk = 0;
	forever
	# (CYCLE/2)
	clk = ~clk;
end

initial begin
	reset = 1;
	# 2
	reset = 0;
	# (CYCLE * RST_TIME)
	reset = 1;
end
endmodule
