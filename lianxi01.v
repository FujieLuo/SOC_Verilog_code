module lianxi01(clk,q_init,q0,q1,q2);
input clk;
input q_init;
output q0,q1,q2;
reg q0,q1,q2;
always@(*)begin
	q0 = q_init;
	q1 = q_init;
	q2 = q_init;
end
always@(posedge clk)begin
	q0 <= ~q2;
	q1 <= q0 ;
	q2 <= q1 ;
end
endmodule
