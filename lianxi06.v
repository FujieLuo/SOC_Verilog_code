module lianxi06(in,s,out);
input[2:0] in;
input[1:0] s;
output[12:0] out;
reg [12:0] out;
always@(*)begin
	case(s)
		2'b00: out <= 0;
		2'b01: out <= square(in);
		2'b10: out <= cube(in);
		2'b11: out <= factorial(in);
		//default:out<= 0;
	endcase
end

function [12:0] square;
	input[2:0] x;
	assign square = x*x;
endfunction

function [12:0] cube;
	input[2:0] y;
	assign cube = y*y*y;
endfunction

function [12:0] factorial;
	input[2:0] z;
	reg [2:0] index;
	begin
	factorial = z?1:0;
	for(index = 2;index<=z;index=index+1)
		factorial = index*factorial;
	end
endfunction
endmodule

