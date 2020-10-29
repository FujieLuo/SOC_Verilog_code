`timescale 1ns/1ns
module lianxi09_tb();
reg clk,ngreset;
reg [7:0] data0,data1,data2,data3,data4;
wire [7:0] middata;

lianxi09 lianxi_09(.clk(clk),.ngreset(ngreset),
	.data0(data0),.data1(data1),.data2(data2),
	.data3(data3),.data4(data4),.middata(middata));

always #4 clk =~clk;
initial begin
	ngreset = 1;
	# 10 
	ngreset = 0;
	# 5 ngreset = 1;
	
end

initial begin
	# 1
	clk = 0;
	data0=6;data1=8;
	data2=9;data3=3;data4=12;
	#17
	data0=5;data1=4;
	data2=6;data3=9;data4=3;
	
	#33
	data0=11;data1=6;
	data2=25;data3=16;data4=71;
	
	#25
	data0=6;data1=83;
	data2=5;data3=17;data4=34;
end
endmodule
