//========================================================================
// PairTripleDetector_GL
//========================================================================

`ifndef PAIR_TRIPLE_DETECTOR_GL_V
`define PAIR_TRIPLE_DETECTOR_GL_V

`include "ece2300-misc.v"

module PairTripleDetector_GL
(
  input wire  in0,
  input wire  in1,
  input wire  in2,
  output wire out
);

wire out1;
wire x;
wire y;

  or( out1, in0, in1);
  and( x, in0, in1);
  and( y, out1, in2);
  or( out, y, x);

endmodule

`endif /* PAIR_TRIPLE_DETECTOR_GL_V */

