
module d_ff(rst,d,q,clk);
input rst,d,clk;
output reg q;
always@(posedge clk)
begin
if(rst)
q<=1'b0;
else
q<=d;
end
endmodule

