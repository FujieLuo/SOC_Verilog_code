module lianxi08(clk,a,b);
input clk,a;
output b;
reg	b;
always@(a)begin
	b <= 1'b1;
	
end
always@(posedge clk)begin
	if(b==1'b1)begin
		b<=1'b0;
	end
end
endmodule
