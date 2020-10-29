module lianxi03_tb();
reg[7:0] bus;
wire	even,odd;
lianxi03 lianxi(.bus(bus),.even(even),.odd(odd));
initial begin
	# 1
	bus = 8'b00000000;
	# 10
	bus = 8'b10110101;
	# 10
	bus = 8'b00110110;
	# 10
	bus = 8'b11111111;
	# 10
	bus = 8'b00000001;
end
endmodule
