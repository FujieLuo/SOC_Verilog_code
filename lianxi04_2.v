module lianxi04_2(clk,rst,outclk,outclk1,outclk2);
 input clk;
 input rst;
 output outclk,outclk1,outclk2;
 
 reg outclk1,outclk2;
 reg [3:0] count1,count2;
 parameter N=3;
 
 always @(posedge clk or negedge rst)
   begin
        if(rst == 1'b0)
           begin
                count1 <= 4'd0;
                outclk1 <= 1'b0;
           end
        else
           begin
                if(count1 == 4'd0)
                    begin
                         outclk1 <= ~outclk1;
                         count1 <= count1 + 1'b1;
                    end
                else if(count1 == N-1)
                    begin
                         outclk1 <= ~outclk1;
                         count1 <= 4'd0;
                    end
                else
                    begin
                         count1 <= count1 + 1'b1;
                    end
           end
   end
   
   always @(negedge clk or negedge rst)
      begin
           if(rst == 1'b0)
              begin
                   count2 <= 4'd0;
                   outclk2 <= 1'b0;
              end
           else
              begin
                   if(count2 == 4'd0)
                       begin
                            outclk2 <= ~outclk2;
                            count2 <= count2 + 1'b1;
                       end
                   else if(count2 == N-1)
                       begin
                            outclk2 <= ~outclk2;
                            count2 <= 4'd0;
                       end
                   else
                       begin
                            count2 <= count2 + 1'b1;
                       end
              end
      end
  assign outclk = outclk1 && outclk2;
endmodule
