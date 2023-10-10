
`ifndef SYNTHESIS
`define ASSERT(BOOL) $display(":assert:(%b)", (BOOL))
`else
`define ASSERT(BOOL) ERROR |= !(BOOL)
`endif
