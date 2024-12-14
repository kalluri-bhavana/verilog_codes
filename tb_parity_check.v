module tb_parity_check();

reg [7:0]in;
/* verilator lint_off UNUSEDSIGNAL */
wire parity;
/* verilator lint_on UNUSEDSIGNAL */
parity_check dut(
	.in(in),
	.parity(parity)
);

initial begin
	$dumpfile("tb_parity_check.vcd");
	$dumpvars(0,tb_parity_check);

	in=8'b00000000;
	#10;

	in=8'b00000001;
	#10;

	in=8'b10101010;
	#10;

	in=8'b11111111;
	#10;

	in=8'b11001100;
	#10;

	in=8'b10000001;
	#10;

	$finish;
end
endmodule
