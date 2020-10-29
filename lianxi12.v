module lianxi12(clk,reset,count,state);

input	clk	;
input	reset	;
output	[5:0]	count	;
output	[1:0]	state	;
reg	[5:0]	count	;
reg	[1:0]	state	;

parameter S0=0,S1_GREEN=1,S2_YELLOW=2,S3_RED=3;

always@(*)begin
	if     	(count<25) state = S1_GREEN;
	else if ((count>=25)&(count<=27))state =S2_YELLOW;
	else if ((count>=28)&(count<42))state=S3_RED;
end


always@(posedge clk or posedge reset)begin
	if(reset == 1'b1)begin
		count <= 0;
		state <= S0;
	end
	else begin 
		if(count==41)count <= 0;
		else count <= count + 1;
	end
end
endmodule













