module FA(input A, B, Cin,
          output Sum, Carry);
  assign Sum = A ^ B ^ Cin;
  assign Carry = A&B | B&Cin | Cin&A;
endmodule

module ripple_carry_adder(input [3:0] A,B,
                          input Cin,
                          output [4:0] Sum);
  wire w1, w2,w3;
  FA M1(.A(A[0]),.B(B[0]),.Cin(Cin),.Carry(w1),.Sum(Sum[0]));
  FA M2(.A(A[1]),.B(B[1]),.Cin(w1),.Carry(w2),.Sum(Sum[1]));
  FA M3(.A(A[2]),.B(B[2]),.Cin(w2),.Carry(w3),.Sum(Sum[2]));
  FA M4(.A(A[3]),.B(B[3]),.Cin(w3),.Carry(Sum[4]),.Sum(Sum[3]));
endmodule
