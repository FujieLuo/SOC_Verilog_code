`timescale 1ns/1ns
module lianxi10_tb();
reg clk;
wire[7:0] index;
wire out;

lianxi10 lianxi_10(.clk(clk),.index(index),.out(out));
always #4 clk =~clk;

initial begin
	clk = 0;
end
endmodule


