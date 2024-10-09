//----------------------------------------------------------------------------
// Example
//----------------------------------------------------------------------------

module mux
(
  input  d0, d1,
  input  sel,
  output y
);

  assign y = sel ? d1 : d0;

endmodule

//----------------------------------------------------------------------------
// Task
//----------------------------------------------------------------------------

module xor_gate_using_mux
(
    input  a,
    input  b,
    output o
);

  // Task:
  // Implement xor gate using instance(s) of mux,
  // constants 0 and 1, and wire connections

  //xor = (a|b) & (~(a&b))

  logic na,out1,out2,nout2;
  mux not_a_mux(1,0,a,na);
  mux or_mux(a,b,na,out1);//sel = ~a
  mux and_mux(a,b,a,out2);//sel = a
  mux not_out2_mux(1,0,out2,nout2);
  mux and_mux_out(out1,nout2,out1,o);//sel = out1

endmodule
