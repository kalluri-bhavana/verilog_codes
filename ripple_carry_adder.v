/* verilator lint_off DECLFILENAME */
/*verilator lint_off unusedsignal*/
module ripple_carry_adder(
	input [3:0]a,b,
	input cin,
	output [3:0]sum,
	output cout
);

wire c1,c2,c0;

fa fa0(a[0],b[0],cin,sum[0],c0);
fa fa1(a[1],b[1],c0,sum[1],c1);
fa fa2(a[2],b[2],c1,sum[2],c2);
fa fa3(a[3],b[3],c2,sum[3],cout);

endmodule

module fa(
	input a,b,cin,
	output sum,cout
);

assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(a&cin);

endmodule
/*verilator lint_on unusedsignal*/
/* verilator lint_on DECLFILENAME */
