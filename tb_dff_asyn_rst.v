/*verilator lint_off unusedsignal*/
module tb_dff_asyn_rst();

reg clk;
reg d;
reg rstn;
wire q;

dff_asyn_rst dut(.d(d),
	.rstn(rstn),
	.clk(clk),
	.q(q)
);

always #10 clk<=~clk;

initial begin
	$dumpfile("tb_dff_asyn_rst.vcd");
	$dumpvars(0,tb_dff_asyn_rst);
	
	clk=0;
	d=0;
	rstn=0;

	#15 d=1;
	#10 rstn=1;

	#20 d=0;
	#40 d=1;
	#30 d=0;

	#100 $finish;
end
endmodule
/*verilator lint_on unusedsignal*/

