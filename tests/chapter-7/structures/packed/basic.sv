// Copyright (C) 2019-2021  The SymbiFlow Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: basic-packed-structures
:description: Test packed structures support
:tags: 7.2.1 7.2 7.1
:type: simulation elaboration parsing
*/
`include "assert.svh"

module top(output reg ERROR);

struct packed {
	bit [3:0] lo;
	bit [3:0] hi;
} p1;

initial begin
	ERROR = 0;
	p1 = 8'h5a;
	`ASSERT(p1 == 'h5a);
	`ASSERT(p1.hi == 'ha);
	`ASSERT(p1.lo == 'h5);
end

endmodule
