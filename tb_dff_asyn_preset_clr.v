module tb_dff_asyn_preset_clr();

reg clk;
reg d;
reg preset;
reg clear;
/* verilator lint_off UNUSEDSIGNAL */
wire q;
/* verilator lint_on UNUSEDSIGNAL */
dff_asyn_preset_clr dut(
	.clk(clk),
	.d(d),
	.preset(preset),
	.clear(clear),
	.q(q)
);

always #5 clk<=~clk;

initial begin
	$dumpfile("tb_dff_asyn_preset_clr.vcd");
	$dumpvars(0,tb_dff_asyn_preset_clr);

	clk=0;
	d=0;
	preset=0;
	clear=0;

	#10 clear=1;
	#10 clear=0;

	#10 preset=1;
	#10 preset=0;

	#10 d=1;
	#10 d=0;
	#10 d=1;

	#10 clear=1; preset=1;
	#10 clear=0; preset=0;

	#20 $finish;
end
endmodule


