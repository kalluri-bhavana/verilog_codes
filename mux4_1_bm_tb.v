module mux4_1_bm_tb;
reg i0,i1,i2,i3,s1,s0;
wire y;

mux4_1_bm m1(i0,i1,i2,i3,s0,s1,y);

initial begin
//intializing inputs i0,i1,i2,i3
i0=1'b0;
i1=1'b1;
i2=1'b1;
i3=1'b0;

s0=1'b0;
s1=1'b0;
#5;
$display("s0=%b,s1=%b,y=%b",s0,s1,y);
s0=1'b0;
s1=1'b1;
#5;
$display("s0=%b,s1=%b,y=%b",s0,s1,y);
s0=1'b1;
s1=1'b0;
#5;
$display("s0=%b,s1=%b,y=%b",s0,s1,y);
s0=1'b1;
s1=1'b1;
#5;
$display("s0=%b,s1=%b,y=%b",s0,s1,y);
end
endmodule
