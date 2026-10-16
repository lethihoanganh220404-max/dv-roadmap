module tb;
  logic [1:0] sel;
  logic [3:0] y;
  
  decoder2to4 dut (
    .sel(sel),
    .y(y)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, tb);
        sel = 2'b00;  #10;
    sel = 2'b01;  #10;
    sel = 2'b10;  #10;
    sel = 2'b11;  #10;
    
    $finish;
  end
  
endmodule
  
    
