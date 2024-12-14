/* verilator lint_off DECLFILENAME */
/*verilator lint_off UNUSEDSIGNAL*/
module fa_ha(
	input a,
	input b,
	input cin,
	output sum,
	output cout
);

wire sum1,carry1,carry2;

ha ha1(
	.a(a),
	.b(b),
	.sum(sum1),
	.carry(carry1)
);

ha ha2(
	.a(sum1),
	.b(cin),
	.sum(sum),
	.carry(carry2)
);

assign cout=carry1|carry2;

endmodule

module ha(
        input a,
        input b,
        output sum,
        output carry
);

assign sum=a^b;
assign carry=a&b;

endmodule

/*verilator lint_on unusedsignal*/
/* verilator lint_on DECLFILENAME */

