// majority.sv — ra 1 khi có từ hai đầu vào trở lên bằng 1
// W2 ngày 16/10 — EDA Playground: edaplayground.com/x/dMK4


module majority (
  input logic a,b,c,
  output logic y );
  assign y = (a&b)|(a&c)|(b&c);
endmodule
