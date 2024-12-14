/*verilator lint_off unusedsignal*/
module tb_ripple_carry_adder();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;

ripple_carry_adder dut(
	.a(a),
	.b(b),
	.cin(cin),
	.sum(sum),
	.cout(cout)
);

initial begin

	$dumpfile("tb_ripple_carry_adder.vcd");
	$dumpvars(0,tb_ripple_carry_adder);

	a=4'b0000; b=4'b0000; cin=0;

	#10 a=4'b0001; b=4'b0001; cin=0; 
	#10 a=4'b0110; b=4'b0101; cin=0;
	#10 a=4'b1100; b=4'b1011; cin=1;
	#10 a=4'b1111; b=4'b1111; cin=0;
	#10 a=4'b1111; b=4'b1111; cin=1;
	#10 a=4'b1001; b=4'b0110; cin=1;
end
endmodule
/*verilator lint_on unusedsignal*/

