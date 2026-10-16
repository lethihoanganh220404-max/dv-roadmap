module tb;
 
  logic a,b,c;
  logic y;
 
  majority dut (
    .a(a), .b(b), .c(c), .y(y) 
  );
 
  initial begin 
    
    $dumpfile("dump.vcd");
    $dumpvars(1, tb);
    
    a = 0; b = 0; c = 0; #10;
    a = 0; b = 0; c = 1; #10;
    a = 0; b = 1; c = 0; #10;
    a = 0; b = 1; c = 1; #10;
    a = 1; b = 0; c = 0; #10;
    a = 1; b = 0; c = 1; #10;
    a = 1; b = 1; c = 0; #10;
    a = 1; b = 1; c = 1; #10;
    
    $finish ;
    
  end
  
endmodule
