module sr_ff_tb();
reg s,r,rst,clk;
wire q;
sr_ff sr1(rst,s,r,q,clk);
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
s=0; r=0;
#40;
$display("q=%b",q);
s=0; r=1;
#40;
$display("q=%b",q);
s=1; r=0;
#40;
$display("q=%b",q);
s=1; r=1;
#40;
$display("q=%b",q);
end
endmodule