// Copyright (C) 2019-2021  The SymbiFlow Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: basic-packed-unions
:description: Test basic union support
:tags: 7.3.1
:type: simulation elaboration parsing
*/

`include "assert.svh"

module top(output reg ERROR);

union packed {
	bit [7:0] v1;
	bit [7:0] v2;
} un;

initial begin
	ERROR = 0;
	un.v1 = 8'd140;
	`ASSERT(un.v1 == 140);
	`ASSERT(un.v2 == 140);
end

endmodule
