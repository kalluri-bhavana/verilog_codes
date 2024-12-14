/*verilator lint_off unusedsignal*/
module tb_priority_encoder83();
reg [7:0]in;
reg enable;
wire [2:0]y;

priority_encoder83 dut(in,enable,y);

initial begin
	$dumpfile("tb_priority_encoder83.vcd");
	$dumpvars(0,tb_priority_encoder83);

	enable=1; in=128; #5
	enable=1; in=64; #5
	enable=1; in=32; #5
	enable=1; in=16; #5
	enable=1; in=8; #5
	enable=1; in=4; #5
	enable=1; in=2; #5
	enable=1; in=0; #5
	enable=0; in=8'bx; #5
	$finish;

end
endmodule
/*verilator lint_on unusedsignal*/

