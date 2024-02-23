//4:1 multiplexer using structural model
module mux4_1_sm(i0,i1,i2,i3,s0,s1,y);
input i0,i1,i2,i3,s0,s1;
output y;
wire w1,w2,w3,w4,w5,w6;
not n1(w1,s0);
not n2(w2,s1);
and a1(w3,i0,w1,w2);
and a2(w4,i1,w1,s1);
and a3(w5,i2,s0,w2);
and a4(w6,i3,s0,s1);
or o1(y,w3,w4,w5,w6);
endmodule

