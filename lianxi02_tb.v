//`timescale 1ns/1ns
module lianxi02_tb();
reg	A,B,Ci;
wire	Co,S;
lianxi02 lianxi(.A(A),.B(B),.Ci(Ci),.Co(Co),.S(S)); 
initial begin
#1
A = 0; B=0; Ci=0;
#10
A = 1; B=1; Ci=0;
#15
A = 0; B=1; Ci=1;
#8
A = 1; B=1; Ci=1;
#10
A = 1; B=0; Ci=1;
#10
A = 0; B=0; Ci=1;
end
endmodule
