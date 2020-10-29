
`timescale 1ns/1ns
module lianxi04_3_tb();
reg clk,reset;
wire out;
parameter CYCLE = 1000;

lianxi04_3 lianxi_3(
    .clk(clk),
    .arst(reset),
    .clk_div(out)
    ); 

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