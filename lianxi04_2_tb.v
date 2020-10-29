`timescale 1ns/1ns
module lianxi04_2_tb();
reg clk,reset;
wire out,outclk1,outclk2;
parameter CYCLE = 1000;

lianxi04_2 lianxi_2(.clk(clk),.rst(reset),.outclk(out),
		.outclk1(outclk1),.outclk2(outclk2));

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
