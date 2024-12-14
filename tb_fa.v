/*verilator lint_off unusedsignal*/
module tb_fa();
reg a;
reg b;
reg cin;
wire sum;
wire cout;

fa_ha dut(
	.a(a),
	.b(b),
	.cin(cin),
	.sum(sum),
	.cout(cout)
);

initial begin
	$dumpfile("tb_fa.vcd");
	$dumpvars(0,tb_fa);

	a=0;b=0;cin=0;
	#10;
	a=0;b=0;cin=1;
        #10;
	a=0;b=1;cin=0;
        #10;
	a=0;b=1;cin=1;
        #10;
	a=1;b=0;cin=0;
        #10;
	a=1;b=0;cin=1;
        #10;
	a=1;b=1;cin=0;
        #10;
	a=1;b=1;cin=1;
        #10;
	$finish;
end
endmodule
/*verilator lint_on unusedsignal*/
