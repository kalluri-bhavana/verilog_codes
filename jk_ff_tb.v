module jk_ff_tb();
reg j,k,rst,clk;
wire q,qbar;
jk_ff jk1(rst,j,k,q,qbar,clk);
initial begin
clk=1'b0;
forever #20 clk=~clk;
end
initial begin
rst=1;
#40;
$display("q=%b,qbar=%b",q,qbar);
rst=0;
#40;
$display("q=%b,qbar=%b",q,qbar);
j=0; k=0;
#40;
$display("q=%b,qbar=%b",q,qbar);
j=0; k=1;
#40;
$display("q=%b,qbar=%b",q,qbar);
j=1; k=0;
#40;
$display("q=%b,qbar=%b",q,qbar);
j=1; k=1;
#40;
$display("q=%b,qbar=%b",q,qbar);
end
endmodule
