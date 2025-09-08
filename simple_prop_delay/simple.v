module Simple_Circuit_prop_delay (v, w, x, y, z);
  output y, z;
  input  v, w, x;
  wire   w2;

  and  #(30) G1 (w2, v, w);
  not  #(10) G2 (z, x);
  or   #(20) G3 (y, w2, z);
endmodule
