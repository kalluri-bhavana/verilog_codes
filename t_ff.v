module t_ff(rst,t,q,clk);
input rst,t,clk;
output reg q;
always@(posedge clk) 
begin 
if(rst) 
q<=1'b0;
else 
if(t) 
q<=~q;
else 
q<=q;
end 
endmodule