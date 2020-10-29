module lianxi09_compare(a,b,out);
input [7:0] a,b;
output out;
assign out = (a>b)?1:0;
endmodule

module lianxi09(clk,ngreset,
	data0,data1,data2,data3,
	data4,middata);
input clk,ngreset;
input [7:0] data0,data1,data2,data3,data4;
output [7:0] middata;
reg [7:0] middata;
reg [2:0] com_0,com_1,com_2,com_3,com_4;

wire out0_1,out0_2,out0_3,out0_4;
wire out1_0,out1_2,out1_3,out1_4;
wire out2_0,out2_1,out2_3,out2_4;
wire out3_0,out3_1,out3_2,out3_4;
wire out4_0,out4_1,out4_2,out4_3;

always@(posedge clk or negedge ngreset)begin
	if(ngreset == 1'b0)begin
		com_0 = 3'b000;com_1 = 3'b000;
		com_2 = 3'b000;com_3 = 3'b000;
		com_4 = 3'b000;
		middata <= 0;
	end
	else begin
		if	(com_0 == 3'b010) middata <= data0;
		else if (com_1 == 3'b010) middata <= data1;
		else if (com_2 == 3'b010) middata <= data2;
		else if (com_3 == 3'b010) middata <= data3;
		else if (com_4 == 3'b010) middata <= data4;
	end
end

lianxi09_compare c0_1(.a(data0),.b(data1),.out(out0_1));
lianxi09_compare c0_2(.a(data0),.b(data2),.out(out0_2));
lianxi09_compare c0_3(.a(data0),.b(data3),.out(out0_3));
lianxi09_compare c0_4(.a(data0),.b(data4),.out(out0_4));

lianxi09_compare c1_0(.a(data1),.b(data0),.out(out1_0));
lianxi09_compare c1_2(.a(data1),.b(data2),.out(out1_2));
lianxi09_compare c1_3(.a(data1),.b(data3),.out(out1_3));
lianxi09_compare c1_4(.a(data1),.b(data4),.out(out1_4));

lianxi09_compare c2_0(.a(data2),.b(data0),.out(out2_0));
lianxi09_compare c2_1(.a(data2),.b(data1),.out(out2_1));
lianxi09_compare c2_3(.a(data2),.b(data3),.out(out2_3));
lianxi09_compare c2_4(.a(data2),.b(data4),.out(out2_4));

lianxi09_compare c3_0(.a(data3),.b(data0),.out(out3_0));
lianxi09_compare c3_1(.a(data3),.b(data1),.out(out3_1));
lianxi09_compare c3_2(.a(data3),.b(data2),.out(out3_2));
lianxi09_compare c3_4(.a(data3),.b(data4),.out(out3_4));

lianxi09_compare c4_0(.a(data4),.b(data0),.out(out4_0));
lianxi09_compare c4_1(.a(data4),.b(data1),.out(out4_1));
lianxi09_compare c4_2(.a(data4),.b(data2),.out(out4_2));
lianxi09_compare c4_4(.a(data4),.b(data3),.out(out4_3));

always@(*)begin
	com_0 = out0_1 + out0_2 + out0_3 + out0_4;
	com_1 = out1_0 + out1_2 + out1_3 + out1_4;
	com_2 = out2_0 + out2_1 + out2_3 + out2_4;
	com_3 = out3_0 + out3_1 + out3_2 + out3_4;
	com_4 = out4_0 + out4_1 + out4_2 + out4_3;
end
endmodule

