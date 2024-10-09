//----------------------------------------------------------------------------
// Example
//----------------------------------------------------------------------------

module mux_2_1
(
  input        [3:0] d0, d1,
  input              sel,
  output logic [3:0] y
);

  always_comb
    if (sel)
      y = d1;
    else
      y = d0;

endmodule

//----------------------------------------------------------------------------
// Task
//----------------------------------------------------------------------------

module mux_4_1
(
  input        [3:0] d0, d1, d2, d3,
  input        [1:0] sel,
  output logic [3:0] y
);

  // Task:
  // Using code for mux_2_1 as an example,
  // write code for 4:1 mux using the "if" statement
  logic[3:0] y1;
  logic[3:0] y2;
  always@(*)
    if (sel[0])
      begin
        y1 = d1;
        y2 = d3;
        if(sel[1])
          y = y2;
        else
          y = y1;
      end
    else
      begin
        y1 = d0;
        y2 = d2;
        if(sel[1])
          y = y2;
        else
          y = y1;
      end
    /*else if (sel[1])
      y = y2;
    else
      y = y1;*/


endmodule
