module all_8bits_set(
	input [7:0]in,
	output all_set
);

assign all_set=(in==8'b11111111)?1'b1:1'b0;

endmodule

