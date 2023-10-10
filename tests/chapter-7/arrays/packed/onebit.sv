// Copyright (C) 2019-2021  The SymbiFlow Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: operations-on-packed-arrays-one-bit
:description: Test packed arrays operations support (one bit)
:tags: 7.4.3
:type: simulation elaboration parsing
*/
`include "assert.svh"

module top(output reg ERROR);

bit [7:0] arr_a;
bit [7:0] arr_b;

initial begin
	ERROR = 0;
	arr_a = 8'hff;
	arr_b = 8'h00;
	`ASSERT(arr_a == 'hff);
	`ASSERT(arr_b == 'h00);

	arr_b[5] = arr_a[2];
	`ASSERT(arr_b == 'b00100000);
end

endmodule
