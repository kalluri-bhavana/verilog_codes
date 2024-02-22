module tb;
reg [31:0] a, b;
reg cin;
wire [31:0] s;
wire co;

thirtytwobitfa fa(a, b, cin, s, co);

initial
begin
	a = 32'd13245; b = 32'd12345; cin = 1'd1;
#5;
 a = 32'd13245; b = 32'd12345; cin = 1'd0; 
#5;
	$monitor($time, "  a = %d; b = %d; cin = %d; sum = %d; co = %d", a, b, cin, s, co);
end
endmodule
