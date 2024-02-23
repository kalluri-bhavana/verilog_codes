module prt_encoder_tb();

reg [3:0]i;
wire [1:0]y;

prt_encoder_df p1(i,y);

initial begin
i=4'b0000;
#5;
$display("i=%b,y=%b",i,y);
i=4'b0001;
#5;
$display("i=%b,y=%b",i,y);
i=4'b0010;
#5;
$display("i=%b,y=%b",i,y);
i=4'b0011;
#5;
$display("i=%b,y=%b",i,y);
i=4'b0100;
#5;
$display("i=%b,y=%b",i,y);
i=4'b0101;
#5;
$display("i=%b,y=%b",i,y);
i=4'b0110;
#5;
$display("i=%b,y=%b",i,y);
i=4'b0111;
#5;
$display("i=%b,y=%b",i,y);
i=4'b1000;
#5;
$display("i=%b,y=%b",i,y);
i=4'b1001;
#5;
$display("i=%b,y=%b",i,y);
i=4'b1111;
#5;
$display("i=%b,y=%b",i,y);

end
endmodule
