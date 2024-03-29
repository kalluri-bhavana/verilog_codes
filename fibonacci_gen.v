module fibonacci(
input clk,
input reset,
output [15:0] fib_out
);
reg [15:0] num1,num2;
always@(posedge clk or negedge reset) begin
if(~reset) begin
num1 <= 0;
num2 <= 1;
end
else begin
num1 <= num2;
num2 <= fib_out;
end
end
assign fib_out =num1 + num2;
endmodule

