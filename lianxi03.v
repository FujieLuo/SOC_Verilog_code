module lianxi03(bus,even,odd);
input	bus;
output	even,odd;
reg	even,odd;
always@(*)begin
	even = ^bus;
	odd  = ^~bus;
end
endmodule
