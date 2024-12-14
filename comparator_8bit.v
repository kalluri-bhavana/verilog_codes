module comparator_8bit(a,b,lt,gt,eq);
input [7:0]a,b;
output lt,gt,eq;

reg lt,eq,gt;

always@(*)
begin
	gt=0;
	lt=0;
	eq=0;

	if(a>b)
		gt=1;
	else if(a<b)
		lt=1;
	else
		eq=1;
end
endmodule

