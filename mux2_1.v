module mux2_1(i0,i1,s,y);
input s,i0,i1;
output y;
assign y=s?i1:i0;
endmodule

module mux41_21(i0,i1,i2,i3,s1,s0,y);
input i0,i1,i2,i3,s1,s0;
output y;
wire y0,y1;
mux2_1 m1(.i0(i0),.i1(i1),.s(s0),.y(y0));
mux2_1 m2(.i0(i2),.i1(i3),.s(s0),.y(y1));
mux2_1 m3(.i0(y0),.i1(y1),.s(s1),.y(y));
endmodule
