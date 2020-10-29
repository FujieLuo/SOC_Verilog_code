module lianxi07(x,z,clk,rst,state);
input x,clk,rst;
output z;
output[2:0] state;
reg[2:0] state;
wire z;
parameter IDLE=3'd0,A=3'd1,B=3'd2,C=3'd3,D=3'd4;

assign z = ((state==C && x==1)||(state==D && x==1))?1:0;
always @(posedge clk or negedge rst)
begin
    if(rst==1'b0) state<=IDLE;
    else
        casex(state)
            IDLE: if(x==1) state<=A;
                  else state<=IDLE;
            A:    if(x==1) state<=B;
                  else state<=IDLE;
            B:    if(x==1) state<=C;
                  else state<=IDLE;
            C:    if(x==1) state<=D;
                  else state<=IDLE;
            D:    if(x==1) state<=D;
                  else state<=IDLE;
            default: state<=IDLE;
        endcase
end
endmodule
