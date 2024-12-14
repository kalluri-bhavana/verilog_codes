module tb_mux_if();

reg [1:0]sel;
reg a;
reg b;
reg c;
reg d;
/*verilator lint_off unusedsignal*/
wire q;
/*verilator lint_on unusedsignal*/
mux_if dut(
	.sel(sel),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.y(q)
);

initial begin
	$dumpfile("tb_mux_if.vcd");
	$dumpvars(0,tb_mux_if);

	a=1'b0;
	b=1'b1;
	c=1'b0;
	d=1'b1;
	sel=2'b00;

	#10 sel=2'b00;
	#10 sel=2'b01;
	#10 sel=2'b10;
	#10 sel=2'b11;

	#10 $finish;
end
endmodule

