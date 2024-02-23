module mux8_1_tb;
reg i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0;
wire y;

mux8_1_df m1(i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,y);

initial begin
//intializing inputs i0,i1,i2,i3
i0=1'b0;
i1=1'b1;
i2=1'b1;
i3=1'b0;
i4=1'b1;
i5=1'b0;
i6=1'b1;
i7=1'b1;

s2=1'b0;
s1=1'b0;
s0=1'b0;
#5;
$display("s2=%b,s1=%b,s0=%b,y=%b",s2,s1,s0,y);
s2=1'b0;
s1=1'b0;
s0=1'b1;
#5;
$display("s2=%b,s1=%b,s0=%b,y=%b",s2,s1,s0,y);
s2=1'b0;
s1=1'b1;
s0=1'b0;
#5;
$display("s2=%b,s1=%b,s0=%b,y=%b",s2,s1,s0,y);
s2=1'b0;
s1=1'b1;
s0=1'b1;
#5;
$display("s2=%b,s1=%b,s0=%b,y=%b",s2,s1,s0,y);
s2=1'b1;
s1=1'b0;
s0=1'b0;
#5;
$display("s2=%b,s1=%b,s0=%b,y=%b",s2,s1,s0,y);
s2=1'b1;
s1=1'b0;
s0=1'b1;
#5;
$display("s2=%b,s1=%b,s0=%b,y=%b",s2,s1,s0,y);
s2=1'b1;
s1=1'b1;
s0=1'b0;
#5;
$display("s2=%b,s1=%b,s0=%b,y=%b",s2,s1,s0,y);
s2=1'b1;
s1=1'b1;
s0=1'b1;
#5;
$display("s2=%b,s1=%b,s0=%b,y=%b",s2,s1,s0,y);
end
endmodule
