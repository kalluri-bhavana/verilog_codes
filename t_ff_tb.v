module t_ff_tb();
reg t,rst,clk;
wire q;
t_ff t1(rst,t,q,clk);
initial begin
clk=1'b0;
forever #20 clk=~clk;
end
initial begin
rst=1;
#40;
$display("q=%b",q);
rst=0;
#40;
$display("q=%b",q);
t=0;
#40;
$display("q=%b",q);
t=1;
#40;
$display("q=%b",q);
end
endmodule

