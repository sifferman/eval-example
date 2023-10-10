// Copyright (C) 2019-2021  The SymbiFlow Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: packed-and-signed-structures
:description: Test packed and signed structures support
:tags: 7.2.1 7.2
:type: simulation elaboration parsing
*/
`include "assert.svh"

module top(output reg ERROR);

struct packed signed {
	bit [3:0] lo;
	bit [3:0] hi;
} p1;

initial begin
	ERROR = 0;
	p1 = 8'd200;
	`ASSERT(p1 == 8'hc8);
	`ASSERT(p1 == -8'd56);
end

endmodule
