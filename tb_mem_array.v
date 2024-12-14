module tb_mem_array();
reg clk;
reg [9:0]address;
reg [7:0]data_in;
reg write_en;
/*verilator lint_off unusedsignal*/
wire [7:0]data_out;
/*verilator lint_on unusedsignal*/

mem_array dut(
	.clk(clk),
	.address(address),
	.data_in(data_in),
	.write_en(write_en),
	.data_out(data_out)
);

always #5 clk<=~clk;

initial begin
	$dumpfile("tb_mem_array.vcd");
	$dumpvars(0,tb_mem_array);

	clk=0;
	address=10'd0;
	data_in=8'b0;
	write_en=0;

	#10 write_en=1; data_in=8'hAA; address=10'd0;
	#10 write_en=0; address=10'd0;

	#10 write_en=1; data_in=8'h55; address=10'd10;
	#10 write_en=0; address=10'd10;

	#10 write_en=1; data_in=8'hff; address=10'd1023;
	#10 write_en=0; address=10'd1023;

	#20 $finish;
end
endmodule

