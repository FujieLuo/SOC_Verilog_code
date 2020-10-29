module lianxi11(clk,ngreset,hsyn,vsyn);
input	clk,ngreset;
output	hsyn,vsyn;

reg hsyn,vsyn;

reg[9:0] counter1; 
reg[9:0] counter2; 

always@(posedge clk or ngreset)begin
	if(ngreset == 1'b0)begin
		hsyn <= 1'b0;
		vsyn <= 1'b0;
		counter1 <= 1'b0;
		counter2 <= 1'b0;
	end 
	else begin 
		if(counter1 == 799)begin
			counter1 <= 1'b0;
		end
		else counter1 <= counter1 + 1'b1;
	end
end

always@(*)begin
	if(counter1<160) hsyn = 1'b0;
	else hsyn = 1'b1;
end

always@(posedge hsyn or negedge ngreset)begin
	if(ngreset == 1'b0)begin
		hsyn <= 1'b0;
		vsyn <= 1'b0;
		counter1 <= 1'b0;
		counter2 <= 1'b0;
	end
	else begin
		if(counter2 == 499)begin
			counter2 <= 1'b0;
		end
		else counter2 <= counter2 + 1'b1;
	end
end

always@(*)begin
	if(counter2<20) vsyn = 1'b0;
	else vsyn = 1'b1;
end
endmodule
