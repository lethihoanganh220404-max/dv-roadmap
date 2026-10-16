module tb;
  logic [7:0] a8, b8, sum8;
  logic [15:0] a16, b16, sum16;
  
  adder u_add8 (
    .a(a8), .b(b8), .sum(sum8)
  );
  
  adder #(.WIDTH(16)) u_add16 (
    .a(a16), .b(b16), .sum(sum16)
  );
  
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1, tb);
        a8 = 8'd10;   b8 = 8'd20;    #10;
        a8 = 8'd255;  b8 = 8'd1;     #10;

        a16 = 16'd1000; b16 = 16'd2000;  #10;

        $finish;
    end

endmodule
