module tb_seven_segment();
/*verilator lint_off unusedsignal*/
reg [3:0]in;
wire [6:0]seg;
/*verilator lint_on unusedsignal*/

seven_segment dut(
	.in(in),
	.seg(seg)
);

initial begin
	$dumpfile("tb_seven_segment.vcd");
	$dumpvars(0,tb_seven_segment);

	in=4'b0000; #10;
	in=4'b0001; #10;
	in=4'b0010; #10;
	in=4'b0011; #10;
	in=4'b0100; #10;
	in=4'b0101; #10;
	in=4'b0110; #10;
	in=4'b0111; #10;
	in=4'b1000; #10;
	in=4'b1001; #10;

	$finish;
end
endmodule

