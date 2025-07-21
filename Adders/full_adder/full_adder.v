module full_adder(input a,b,c,
                  output sum,carry);
  wire w1,w2,w3;
  assign sum = a^b^c;
  assign w1 = a & b;
  assign w2 = b & c;
  assign w3 = a & c;
  assign carry = w1|w2|w3;
endmodule
