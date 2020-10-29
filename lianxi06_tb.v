`timescale 1ns/1ns
module lianxi06_tb();
reg [2:0] num_in;
reg [1:0] select_mode;
wire[12:0] num_out;

lianxi06 lianxi_06_6(.in(num_in),.s(select_mode),.out(num_out));

initial begin
	#1
	num_in = 3'b000;
	select_mode = 2'b00;
	# 10
	num_in = 3'b101;
	select_mode = 2'b01;
	# 10
	num_in = 3'b100;
	select_mode = 2'b10;
	# 10
	num_in = 3'b101;
	select_mode = 2'b11;
	# 10
	num_in = 3'b110;
	select_mode = 2'b00;
end
endmodule

