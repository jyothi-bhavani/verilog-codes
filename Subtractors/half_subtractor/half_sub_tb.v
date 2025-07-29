module half_sub_tb();
reg a,b;
wire sum,barrow;
  half_sub dut(.a(a),.b(b),.sum(sum),.borrow(borrow));
initial
begin
   $dumpfile("dump.vcd");
   $dumpvars;
  a=0;b=0;
  #20;
  a=0;b=1;
  #20;
  a=1;b=0;
  #20;
  a=1;b=1;
  $finish();
end
endmodule
