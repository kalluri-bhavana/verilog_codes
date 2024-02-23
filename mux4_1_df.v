//4:1 multiplexer using dataflow modelling
module mux4_1_df(i0,i1,i2,i3,s1,s0,y);
input i0,i1,i2,i3,s1,s0;
output y;

assign y=(i0&~s1&~s0)|(i1&~s1&s0)|(i2&s1&~s0)|(i3&s1&s0);

endmodule
