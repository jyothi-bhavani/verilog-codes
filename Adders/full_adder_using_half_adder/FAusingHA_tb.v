module FA_HA_tb();
  reg a, b, c;
  wire sum, carry;
  FA_HA dut(a, b, c, sum, carry);
  initial begin    
    for (integer count = 0; count < 8; count = count + 1) begin
      {a, b, c} = count[2:0]; 
      #10;
    end
    $finish;
  end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
endmodule                                                                     
