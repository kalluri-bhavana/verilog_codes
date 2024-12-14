/* verilator lint_off WIDTHTRUNC */
/* verilator lint_off unusedsignal */
module tb_decoder_4to16();

reg w,x,y,z;

wire d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15;

decoder_4to16 dut(w,x,y,z,d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15);

initial begin

	$dumpfile("tb_decoder_4to16.vcd");
	$dumpvars(0,tb_decoder_4to16);

	for(integer i=0;i<16;i=i+1)begin
		{w,x,y,z}=i;
		#10;
	end
	 
	$finish;

end
endmodule
/* verilator lint_on WIDTHTRUNC */
/* verilator lint_on unusedsignal */
