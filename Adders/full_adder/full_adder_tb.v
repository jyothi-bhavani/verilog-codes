module full_adder_tb();
  reg a,b,c;
  reg w1,w2,w3;
  wire sum,carry;
  
  full_adder dut(a,b,c,sum,carry);
  
  initial 
    begin
      a=0; b=0; c=0; #10
      a=0; b=0; c=1; #10
      a=0; b=1; c=0; #10
      a=0; b=1; c=1; #10
      a=1; b=0; c=0; #10
      a=1; b=0; c=1; #10
      a=1; b=1; c=0; #10
      a=1; b=1; c=1; #10
      $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
      
