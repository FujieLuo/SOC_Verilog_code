module HA(A,B,S,C);
	input	A,B ;
	output	S,C ;
	assign {C,S} = A + B;
endmodule

module lianxi02(A,B,Ci,Co,S);
	input 	A,B,Ci;
	output	Co,S  ;
	reg	Co,S  ;
	wire	cout1,cout2,S1,FA;
	
	HA ha1(.A(A),.B(B),.S(FA),.C(cout1));
	HA ha2(.A(FA),.B(Ci),.S(S1),.C(cout2));
	always@(*)begin
		Co = cout1 | cout2;
		S  = S1;
	end
endmodule
