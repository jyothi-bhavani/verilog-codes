module logic_gates( input a,b,
        output c_and,d_or,e_not,f_nand,g_nor,h_xor,i_xnor);
  assign c_and = a & b;
  assign d_or = a | b;
  assign e_not = ~a;
  assign f_nand = ~(a & b);
  assign g_nor = ~(a | b);
  assign h_xor = a ^ b;
  assign i_xnor = ~(a ^ b);
endmodule

