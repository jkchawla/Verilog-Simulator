module CLA_Adder(a,b,cin,sum,cout);
	input[15:0] a,b;
	input cin;
	output [15:0] sum;
	output cout;
	wire p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,g0,g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13,g14,g15,c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15;
  assign p0=(a[0]^b[0]);
  assign p1=(a[1]^b[1]);
               assign p2=(a[2]^b[2]);
               assign p3=(a[3]^b[3]);
               assign p4=(a[4]^b[4]);
               assign p5=(a[5]^b[5]);
  assign p6=(a[6]^b[6]);
  assign p7=(a[7]^b[7]);
  assign p8=(a[8]^b[8]);
  assign p9=(a[9]^b[9]);
  assign p10=(a[10]^b[10]);
  assign p11=(a[11]^b[11]);
  assign p12=(a[12]^b[12]);
  assign p13=(a[13]^b[13]);
  assign p14=(a[14]^b[14]);
assign p15=(a[15]^b[15]);
  assign g0=(a[0]&b[0]);
      assign g1=(a[1]&b[1]);
               assign g2=(a[2]&b[2]);
               assign g3=(a[3]&b[3]);
               assign g4=(a[4]&b[4]);
               assign g5=(a[5]&b[5]);
  assign g6=(a[6]&b[6]);
  assign g7=(a[7]&b[7]);
  assign g8=(a[8]&b[8]);
  assign g9=(a[9]&b[9]);
  assign g10=(a[10]&b[10]);
  assign g11=(a[11]&b[11]);
  assign g12=(a[12]&b[12]);
  assign g13=(a[13]&b[13]);
  assign g14=(a[14]&b[14]);
assign g15=(a[15]&b[15]);
  assign c0= cin;
  assign c1=g0|(p0&cin);
  assign c2=g1|(p1&g0)|(p1&p0&cin);
               assign c3=g2|(p2&g1)|(p2&p1&g0)|(p2&p1&p0&cin);
               assign c4=g3|(p3&g2)|(p3&p2&g1)|(p3&p2&p1&g0)|(p3&p2&p1&p0&cin);
               assign c5 =g4|(p4&g3)|(p4&p3&g2)|(p4&p3&p2&g1)|(p3&p2&p1&p0&cin);
        assign c6=g5|(p5&g4)|(p5&p4&g3)|(p5&p4&p3&g2)|(p4&p3&p2&g1)|(p3&p2&p1&p0&cin);
        assign c7=g6|(p6&g5)|(p6&p5&g4)|(p6&p5&p4&g3)||(p5&p4&p3&g2)|(p4&p3&p2&g1)|(p3&p2&p1&p0&cin);
      assign c8=g7|(p7&g6)|(p7&p6&g5)|(p7&p6&p5&g4)|(p6&p5&p4&g3)||(p5&p4&p3&g2)|(p4&p3&p2&g1)|(p3&p2&p1&p0&cin);
      assign c9=g8|(p8&g7)|(p8&p7&g6)|(p8&p7&p6&g5)|(p7&p6&p5&g4)|(p6&p5&p4&g3)||(p5&p4&p3&g2)|(p4&p3&p2&g1)|(p3&p2&p1&p0&cin);
      assign c10=g9|(p9&g8)|(p9&p8&g7)|(p9&p8&p7&g6)|(p8&p7&p6&g5)|(p7&p6&p5&g4)|(p6&p5&p4&g3)||(p5&p4&p3&g2)|(p4&p3&p2&g1)|(p3&p2&p1&p0&cin);
      assign c11=g10|(p10&g9)|(p10&p9&g8)|(p10&p9&p8&g7)|(p9&p8&p7&g6)|(p8&p7&p6&g5)|(p7&p6&p5&g4)|(p6&p5&p4&g3)||(p5&p4&p3&g2)|(p4&p3&p2&g1)|(p3&p2&p1&p0&cin);
      assign c12=g11|(p11&g10)|(p11&p10&g9)|(p11&p10&p9&g8)|(p10&p9&p8&g7)|(p9&p8&p7&g6)|(p8&p7&p6&g5)|(p7&p6&p5&g4)|(p6&p5&p4&g3)||(p5&p4&p3&g2)|(p4&p3&p2&g1)|(p3&p2&p1&p0&cin);
      assign c13=g12|(p12&g11)|(p12&p11&g10)|(p12&p11&p10&g9)|(p11&p10&p9&g8)|(p10&p9&p8&g7)|(p9&p8&p7&g6)|(p8&p7&p6&g5)|(p7&p6&p5&g4)|(p6&p5&p4&g3)|(p5&p4&p3&g2)|(p4&p3&p2&g1)|(p3&p2&p1&p0&cin);
      assign c14=g13|(p13&g12)|(p13&p12&g11)|(p13&p12&p11&g10)|(p12&p11&p10&g9)|(p11&p10&p9&g8)|(p10&p9&p8&g7)|(p9&p8&p7&g6)|(p8&p7&p6&g5)|(p7&p6&p5&g4)|(p6&p5&p4&g3)||(p5&p4&p3&g2)|(p4&p3&p2&g1)|(p3&p2&p1&p0&cin);
      assign c15=g14|(p14&g13)|(p14&p13&g12)|(p14&p13&p12&g11)|(p13&p12&p11&g10)|(p12&p11&p10&g9)|(p11&p10&p9&g8)|(p10&p9&p8&g7)|(p9&p8&p7&g6)|(p8&p7&p6&g5)|(p7&p6&p5&g4)|(p6&p5&p4&g3)||(p5&p4&p3&g2)|(p4&p3&p2&g1)|(p3&p2&p1&p0&cin);

      assign sum[0]=p0^c0;
  assign sum[1]=p1^c1;
  assign sum[2]=p2^c2;
  assign sum[3]=p3^c3;
  assign sum[4]=p4^c4;
  assign sum[5]=p5^c5;
  assign sum[6]=p6^c6;
  assign sum[7]=p7^c7;
  assign sum[8]=p8^c8;
  assign sum[9]=p9^c9;
  assign sum[10]=p10^c10;
  assign sum[11]=p11^c11;
  assign sum[12]=p12^c12;
  assign sum[13]=p13^c13;
  assign sum[14]=p14^c14;
      assign sum[15]=p15^p15;

	assign cout=c4;

endmodule
module tbw_lookahead;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg cin;

	// Outputs
	wire [15:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	CLA_Adder uut (
		.a(a),
		.b(b),
		.cin(cin),
		.sum(sum),
		.cout(cout)
	);

	initial begin
      $monitor( $time,"a=%b,a=%b,cout=%b,sum=%b",a,b,cout,sum);

		a = 0;
		b = 0;
		cin = 0;
      #10 a = (-10); b = 100 ; cin= 0;
#10 a = 63; b = 127 ; cin= 0;
#10 a = 15; b= 95; cin = 0;
      #10 a = -32; b = 79 ; cin= 0;
      #10 a = -59; b = -16 ; cin= 0;
      #10 a = 1000; b = 2001 ; cin= 0;
      #10 a = -3220; b = 15 ; cin= 0;


		// Wait 100 ns for global reset to finish
		#100;


	end

endmodule
