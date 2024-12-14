module tb_all_8bits_set();

reg [7:0]in;
/* verilator lint_off UNUSEDSIGNAL */
wire all_set;
/* verilator lint_off UNUSEDSIGNAL */
all_8bits_set dut(
	.in(in),
	.all_set(all_set)
);

initial begin
	$dumpfile("tb_all_8bits_set.vcd");
	$dumpvars(0,all_bits_set);

	in=8'b11111111;
	#10;

	in=8'b11111110;
	#10;

	in=8'b10101010;
	#10;

	in=8'b00000000;
	#10;

	in=8'b11000011;
	#10;

	$finish;
end
endmodule

