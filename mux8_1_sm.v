module mux8_1_sm(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);
input i0,i1,i2,i3,i4,i5,i6,i7;
input s0,s1,s2;
output y;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;
not n1(w1,s0);
not n2(w2,s1);
not n3(w3,s2);
and a1(w4,i0,w1,w2,w3);
and a2(w5,i1,s0,w2,w3);
and a3(w6,i2,w1,s1,w3);
and a4(w7,i3,s0,s1,w3);
and a5(w8,i4,w1,w2,s2);
and a6(w9,i5,s0,w2,s2);
and a7(w10,i6,w1,s1,s2);
and a8(w11,s0,s1,s2);
or (y,w4,w5,w6,w7,w8,w9,w10,w11);
endmodule
