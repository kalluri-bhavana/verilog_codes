/* verilator lint_off DECLFILENAME */
module decoder_4to16(w,x,y,z,d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15);
input w,x,y,z;
output d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15;
wire d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15;

decoder_3to8 decoder2(~w,x,y,z,d0,d1,d2,d3,d4,d5,d6,d7);
decoder_3to8 decoder3(w,x,y,z,d8,d9,d10,d11,d12,d13,d14,d15);

endmodule


module decoder_3to8(en,x,y,z,d0,d1,d2,d3,d4,d5,d6,d7);
input en,x,y,z;
output d0,d1,d2,d3,d4,d5,d6,d7;
wire d0,d1,d2,d3,d4,d5,d6,d7;

wire p,q,r;

not n0(p,x);
not n1(q,y);
not n2(r,z);

and a0(d0,p,q,r,en);
and a1(d1,p,q,z,en);
and a2(d2,p,y,r,en);
and a3(d3,p,y,z,en);
and a4(d4,x,q,r,en);
and a5(d5,x,q,z,en);
and a6(d6,x,y,r,en);
and a7(d7,x,y,z,en);

endmodule
/* verilator lint_on DECLFILENAME */
