module lianxi04_3(
    input clk,
    input arst,
    output clk_div
    );   
parameter N = 3;
reg [2:0] cnt;
reg clk_a;
reg clk_b;
wire clk_c;
 
always@(posedge clk or negedge arst)
begin
    if(arst == 1'b0)
        cnt <= 0;
    else if(cnt == N-1)
        cnt <= 0;
    else
        cnt <= cnt + 1;    
end
 
always@(posedge clk or negedge arst)
begin
    if(arst == 1'b0)
        clk_a<= 0;
    else if(cnt == (N-1)/2 || cnt == N-1)
        clk_a<= ~clk_a;
    else
        clk_a<= clk_a;    
end
 
/*****************??1**********************/
always@(negedge clk or negedge arst)
begin
    if(arst == 1'b0)
        clk_b <= 0;
    else 
        clk_b <= clk_a;
end
/******************??2********************/
//always@(negedge clk or posedge arst)
//begin
//    if(arst)
//        clk_b<= 0;
//    else if(cnt == (N-1)/2 || cnt == N-1)
//        clk_b<= ~clk_b;
//    else
//        clk_b<= clk_b;    
//end
/*********************************************/
 
assign clk_c = clk_a | clk_b;
//N[0]=1???????
assign clk_div = N[0] ? clk_c : clk_a;
 
endmodule