module lianxi05(clk,reset,dout);
input clk,reset;
output dout;
reg	dout;
reg[4:0] count1;
always@(posedge clk or negedge reset)begin
if(reset == 1'b0)begin
	dout<=1'b0;
	count1 <= 5'd0;
end
else begin
if(count1 == 5'd0)begin
	dout <= ~dout;
	count1 <= count1 + 1'b1;
end
else if(count1 == 5'd5) begin
	dout <= ~dout;
	count1 <= count1 + 1'b1;
	end
else if(count1 == 5'd16)begin
	dout <= dout;
	count1 <= 5'd0;
	end
else begin
	count1 <= count1 +1;
end
end
end
endmodule
