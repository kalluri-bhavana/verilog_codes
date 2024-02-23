module mux8_1_df(i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,y);
input i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0;
output y;

assign y=(i0&~s2&~s1&~s0)|(i1&~s2&~s1&s0)|(i2&~s2&s1&~s0)|(i3&~s2&s1&s0)|(i4&s2&~s1&~s0)|(i5&s2&~s1&s0)|(i6&s2&s1&~s0)|(i7&s2&s1&s0);

endmodule
