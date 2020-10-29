`timescale 1ns/1ns
module lianxi12_tb();
reg clk,reset;
wire[5:0] counter;
wire[1:0] state;

lianxi12 lianxi_12(.clk(clk),.reset(reset),
	.count(counter),.state(state));

always #5 clk =~clk;

initial begin
	clk = 0;
	reset = 0;
	# 4
	reset = 1;
	# 3
	reset = 0;
end
endmodule
