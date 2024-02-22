module d_ff_tb();
reg d,rst,clk;
wire q;
d_ff d1(rst,d,q,clk);
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
d=0;
#40;
$display("q=%b",q);
d=1;
#40;
$display("q=%b",q);
end
endmodule

