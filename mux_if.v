module mux_if(
	input [1:0]sel,
	input a,
	input b,
	input c,
	input d,
	output reg y
);

always@(*)begin
	if(sel==2'b00)
		y=a;
	else if(sel==2'b01)
		y=b;
	else if(sel==2'b10)
		y=c;
	else if(sel==2'b11)
		y=d;
	else
		y=1'b0;
end
endmodule

