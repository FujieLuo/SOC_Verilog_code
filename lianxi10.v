module lianxi10(clk,index,out);
input	clk;
output[7:0]	index;
output out;
reg[7:0] index;
reg out;

always@(posedge clk)begin
	index <= {$random}%256;
	if (index <=127) out<=0;
	else out<=1;
end
endmodule
