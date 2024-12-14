module mem_array(
	input clk,
	input [9:0]address,
	input [7:0]data_in,
	input write_en,
	output reg [7:0]data_out
);

reg [7:0]memory[0:1023];

always@(posedge clk)begin
	if(write_en)begin
		memory[address]<=data_in;//write data to memory location
	end else begin
		data_out<=memory[address];//read data from memory location
	end
end
endmodule

