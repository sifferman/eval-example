// Copyright (C) 2019-2021  The SymbiFlow Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: memories-read-write
:description: Test memories read-write support
:tags: 7.4.4
:type: simulation elaboration parsing
*/
`include "assert.svh"

module top(output reg ERROR);

// one-dimensinal array with elements of types
// reg, logic, bit
logic [7:0] mem [0:255];

initial begin
	ERROR = 0;
	mem[5] = 0;
	`ASSERT(mem[5] == 0);

	mem[5] = 5;
	`ASSERT(mem[5] == 5);
end

endmodule
