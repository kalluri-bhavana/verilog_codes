module encoder_8_3(o,i);
output reg [2:0]o;
input [7:0]i;
always@(*) 
case(i) 
8'h01 : o=3'b000; 
8'h02 : o=3'b001;
8'h04 : o=3'b010;
8'h08 : o=3'b011;
8'h10 : o=3'b100;
8'h20 : o=3'b101;
8'h40 : o=3'b110;
8'h80 : o=3'b111;
default : o=3'bxxx;
endcase 
endmodule 

