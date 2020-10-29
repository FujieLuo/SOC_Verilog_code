`timescale 1ns/1ns
module lianxi04_tb();
reg clk,reset;
wire out;
parameter CYCLE = 1000;

lianxi04 lianxi(.clk(clk),.reset(reset),.dout(out));

initial begin
	clk = 0;
	forever
	# (CYCLE/2)
	clk = ~clk;
end

initial begin
	# (2*CYCLE)
	reset = 0;
	# CYCLE
	reset = 1;
end
endmodule