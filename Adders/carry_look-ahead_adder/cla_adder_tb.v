module cla_adder_tb();
  reg [3:0] a,b;
  reg cin;
  wire [3:0] sum;
  wire cout;
  cla_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
  initial begin
    a=4'b0000; b=4'b0000; cin=1'b0;
    #20;
    $display("a=%d,b=%d,cin=%b,sum=%d",a,b,cin,sum);
    a=4'b1000; b=4'b0001; cin=1'b1;
    #20;
    $display("a=%d,b=%d,cin=%b,sum=%d",a,b,cin,sum);
    a=4'b1010; b=4'b1011; cin=1'b0;
    #20;
    $display("a=%d,b=%d,cin=%b,sum=%d",a,b,cin,sum);
    a=4'b0101; b=4'b1001; cin=1'b0;
    #20;
    $display("a=%d,b=%d,cin=%b,sum=%d",a,b,cin,sum);
    a=4'b0010; b=4'b0111; cin=1'b1;
    #20;
    $display("a=%d,b=%d,cin=%b,sum=%d",a,b,cin,sum);
    a=4'b1111; b=4'b1111; cin=1'b1;
    #20;
    $display("a=%d,b=%d,cin=%b,sum=%d",a,b,cin,sum);
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
