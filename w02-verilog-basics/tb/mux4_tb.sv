module tb;
  logic       d0, d1, d2, d3;
  logic [1:0] sel;
  logic       y;
  
   
  mux4 dut (
    .d0(d0), .d1(d1), .d2(d2), .d3(d3), .y(y), .sel(sel) 
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, tb);
     
    d0 = 1'b0;
    d1 = 1'b1;
    d2 = 1'b0;
    d3 = 1'b1;
    
    sel = 2'b00;  #10;
    sel = 2'b01;  #10;
    sel = 2'b10;  #10;
    sel = 2'b11;  #10;
    
    $finish;
  end
  
endmodule
