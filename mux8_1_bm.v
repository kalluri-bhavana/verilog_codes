module mux8_1_bm(i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,y);
input i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0;
output reg y;
always@(*)
begin
case({s2,s1,s0})
3'b000:y=i0;
3'b001:y=i1;
3'b010:y=i2;
3'b011:y=i3;
3'b100:y=i4;
3'b101:y=i5;
3'b110:y=i6;
3'b111:y=i7;
default:y=1'b0;
endcase
end
endmodule


