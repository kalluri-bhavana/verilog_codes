module dff_asyn_preset_clr(
	input clk,
	input d,
	input preset,
	input clear,
	output reg q
);

always@(posedge clk or posedge preset or posedge clear)begin
	if(clear)
		q<=1'b0;
	else if(preset)
		q<=1'b1;
	else
		q<=d;
end
endmodule


