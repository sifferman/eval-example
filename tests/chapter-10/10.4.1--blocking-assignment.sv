// Copyright (C) 2019-2021  The SymbiFlow Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: blocking_assignment
:description: blocking assignment test
:tags: 10.4.1
:type: simulation elaboration parsing
*/
`include "assert.svh"

module top(output reg ERROR);

logic a = 3;
logic b = 2;

initial begin
	ERROR = 0;
	a = 1;
	b = a;
	`ASSERT(a == b);
end

endmodule
