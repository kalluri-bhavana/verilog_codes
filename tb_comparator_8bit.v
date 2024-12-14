/*verilator lint_off unusedsignal*/

module tb_comparator_8bit();

reg [7:0]a,b;
wire eq,gt,lt;

comparator_8bit dut(a,b,gt,lt,eq);

initial begin

	$dumpfile("tb_comparator_8bit.vcd");
	$dumpvars(0,tb_comparator_8bit);

	a=8'b00001111;
	b=8'b00001111;
	#10;

	a=8'b10010010;
        b=8'b01101100;
        #10;

	a=8'b00101011;
        b=8'b01111001;
        #10;

	a=8'b00000000;
        b=8'b00000001;
        #10;

	a=8'b11111111;
        b=8'b00000000;
        #10;

	$finish;

end
endmodule
/*verilator lint_on unusedsignal*/





