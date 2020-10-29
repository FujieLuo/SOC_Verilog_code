`timescale 1ns / 1ns
module lianxi07_tb();
reg clk, rst,x;
wire[2:0] state;
wire z;
always #10 clk=~clk;
always @(posedge clk)
    begin
        x<={$random}%2;
    end
initial
    begin
        clk=0;
        rst=1;
        #2 rst=0;
        #10 rst=1;
        #1000 $stop;
    end
initial
    begin
        $dumpfile("data_detect.vcd");
        $dumpvars ;
    end
lianxi07 lianxi_07(.x(x),.z(z),.clk(clk),.rst(rst),.state(state));
endmodule
