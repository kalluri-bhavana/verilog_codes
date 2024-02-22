module onebitfa(a,b,cin,s,c0);
input a,b,cin;
output s,c0;
assign s=a^b^cin;
assign c0=(a&b)| (a&cin) | (b&cin);
endmodule

module fourbitfa(a,b,cin,s,c0);
input [3:0]a,b;
input cin;
output [3:0]s;
output c0;
wire q1,q2,q3;
onebitfa a_1(a[0],b[0],cin,s[0],q1);
onebitfa a_2(a[1],b[1],q1,s[1],q2);
onebitfa a_3(a[2],b[2],q2,s[2],q3);
onebitfa a_4(a[3],b[3],q3,s[3],c0);
endmodule

module eightbitfa(a,b,cin,s,c0);
input [7:0]a,b;
input cin;
output [7:0]s;
output c0;
wire q4;
fourbitfa a_5(a[3:0],b[3:0],cin,s[3:0],q4);
fourbitfa a_6(a[7:4],b[7:4],q4,s[7:4],c0);
endmodule

module sixteenbitfa(a,b,cin,s,c0);
input [15:0]a,b;
input cin;
output [15:0]s;
output c0;

wire q5;
eightbitfa a_7(a[7:0], b[7:0], cin, s[7:0], q5);
eightbitfa a_8(a[15:8], b[15:8], q5, s[15:8], c0);

endmodule

module thirtytwobitfa(a,b,cin,s,c0);
input [31:0]a,b;
input cin;
output [31:0]s;
output c0;

wire q6;
sixteenbitfa a_9(a[15:0], b[15:0], cin, s[15:0], q6);
sixteenbitfa a_10(a[31:16], b[31:16], q6, s[31:16], c0);

endmodule

