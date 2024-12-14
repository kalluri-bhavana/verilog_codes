module mux41_nand(
	input s1,s0,d0,d1,d2,d3,
	output y
);

wire p,q,x,z,a,b;

nand n0(p,s1,s1);
nand n1(q,s0,s0);

nand n2(x,p,q,d0);
nand n3(z,p,s0,d1);
nand n4(a,s1,q,d2);
nand n5(b,s1,s0,d3);

nand n6(y,x,z,a,b);
endmodule

