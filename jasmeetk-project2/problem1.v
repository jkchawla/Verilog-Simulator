module RippleCarry16bit(Cout, A, B, Cin,sum);

  input [15:0]A;
  input [15:0]B;
  input Cin;
  output [15:0]sum;
output Cout;
wire [14:0]c;
  FullAdder FA1(sum[0],c[0],A[0],B[0],Cin);
  FullAdder FA2(sum[1],c[1],A[1],B[1],c[0]);
  FullAdder FA3(sum[2],c[2],A[2],B[2],c[1]);
  FullAdder FA4(sum[3],c[3],A[3],B[3],c[2]);
  FullAdder FA5(sum[4],c[4],A[4],B[4],c[3]);
  FullAdder FA6(sum[5],c[5],A[5],B[5],c[4]);
  FullAdder FA7(sum[6],c[6],A[6],B[6],c[5]);
  FullAdder FA8(sum[7],c[7],A[7],B[7],c[6]);
FullAdder FA9(sum[8],c[8],A[8],B[8],c[7]);
FullAdder FA10(sum[9],c[9],A[9],B[9],c[8]);
FullAdder FA11(sum[10],c[10],A[10],B[10],c[9]);
FullAdder FA12(sum[11],c[11],A[11],B[11],c[10]);
FullAdder FA13(sum[12],c[12],A[12],B[12],c[11]);
FullAdder FA14(sum[13],c[13],A[13],B[13],c[12]);
FullAdder FA15(sum[14],c[14],A[14],B[14],c[13]);
FullAdder FA16(sum[15],Cout,A[15],B[15],c[14]);
endmodule

module FullAdder(sum,cout,a,b,cin);
input a,b,cin;
output sum,cout;
assign sum = a^b^cin;
assign cout= (a&&b)||(b&&cin)||(cin&&a);
endmodule
module RCA16tb;

   // Inputs
   reg [15:0] A;
   reg [15:0] B;
   reg Cin;

   // Outputs
  wire [15:0] sum;
   wire Cout;

   // Instantiate the Unit Under Test (UUT)
   RippleCarry16bit uut (
     .sum(sum),
       .Cout(Cout),
       .A(A),
       .B(B),
       .Cin(Cin)
   );

   initial begin
       // Initialize Inputs
       A = 0;B = 0;Cin = 0;
  // Wait 100 ns for global reset to finish
  #100;
  // Add stimulus here
   #10 A = (-10); B = 100 ;
#10 A = 63; B = 127 ;
#10 A = 15; B= 95;
      #10 A = -32; B = 79 ;
      #10 A = -59; B = -16 ;
      #10 A = 1000; B = 2001 ;
      #10 A = -3220; B = 15 ;
  //add more inputs here
 end
 initial begin
   $monitor("time=",$time,, "A=%b B=%b Cin=%b : sum=%b Cout=%b",A,B,Cin,sum,Cout);
 end

endmodule
