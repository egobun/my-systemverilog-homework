//----------------------------------------------------------------------------
// Example
//----------------------------------------------------------------------------

module mux_2_1
(
  input  [3:0] d0, d1,
  input        sel,
  output [3:0] y
);

  assign y = sel ? d1 : d0;

endmodule

//----------------------------------------------------------------------------
// Task
//----------------------------------------------------------------------------

module mux_4_1
(
  input  [3:0] d0, d1, d2, d3,
  input  [1:0] sel,
  output [3:0] y
);

  // Task:
  // Using code for mux_2_1 as an example,
  // write code for 4:1 mux using "?:" operator
  logic [3:0] y1;
  logic [3:0] y2;
  assign y1 = sel[0] ? d1 : d0;
  assign y2 = sel[0] ? d3 : d2;
  assign y = sel[1] ? y2 : y1;
  
endmodule
