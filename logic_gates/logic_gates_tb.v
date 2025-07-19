module logic_gates_tb();
  reg a,b;
  wire y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor;
  
  logic_gates dut(.a(a), .b(b),
                  .y_and(y_and),
                  .y_or(y_or),
                  .y_not(y_not),  
                  .y_nand(y_nand),
                  .y_nor(y_nor),
                  .y_xor(y_xor),
                  .y_xnor(y_xnor));
  initial
    begin
      a=0;b=0;#10;
      a=0;b=1;#10;
      a=1;b=0;#10;
      a=1;b=1;#10;
      a=0;b=0;#10;
      $finish;
   end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
endmodule
