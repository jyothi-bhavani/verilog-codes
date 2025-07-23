module ripple_carry_adder_tb();
  reg [3:0] A, B;
  reg       Cin;
  wire [4:0] Sum;
  ripple_carry_adder dut (
    .A(A), 
    .B(B), 
    .Cin(Cin), 
    .Sum(Sum)
  );
  initial begin
    //Testcase1
    A <= 4'b0000; B <= 4'b0000; Cin <= 1'b1;
    #10;
    $display("A=%d, B=%d, Cin=%d, Sum=%d", A, B, Cin, Sum);
    
    //Testcase2
    A <= 4'b0001; B <= 4'b0101; Cin <= 1'b1;
    #10;
    $display("A=%d, B=%d, Cin=%d, Sum=%d", A, B, Cin, Sum);

    // Test Case 3
    A <= 4'b0010; B <= 4'b1001; Cin <= 1'b0;
    #10;
    $display("A=%d, B=%d, Cin=%d, Sum=%d", A, B, Cin, Sum);

    // Test Case 4
    A <= 4'b0111; B <= 4'b1011; Cin <= 1'b1;
    #10;
    $display("A=%d, B=%d, Cin=%d, Sum=%d", A, B, Cin, Sum);

    // Test Case 5
    A <= 4'b1010; B <= 4'b0011; Cin <= 1'b0;
    #10;
    $display("A=%d, B=%d, Cin=%d, Sum=%d", A, B, Cin, Sum);

    // Test Case 6
    A <= 4'b1111; B <= 4'b1111; Cin <= 1'b0;
    #10;
    $display("A=%d, B=%d, Cin=%d, Sum=%d", A, B, Cin, Sum);

    $finish;
  end
    initial begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
endmodule
