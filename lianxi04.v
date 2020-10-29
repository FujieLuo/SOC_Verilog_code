module lianxi04(clk,reset,dout);
input	clk,reset;
output	dout;
reg	dout;
reg[1:0] count;
always@(posedge clk or negedge reset)begin
if(reset == 1'b0) begin
dout <= 0;
count <= 2'b00;
end
else begin
	if(count == 0)begin
		dout <= ~dout;
		count <= count + 1'b1;
	end
	else if(count == 2)begin
		dout <= ~dout;
		count <= 2'b00;
	end
	else begin
		count <= count + 1'b1;
	end	
end
end
endmodule
