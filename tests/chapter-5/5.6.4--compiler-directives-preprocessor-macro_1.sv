// Copyright (C) 2019-2021  The SymbiFlow Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: compiler_directives_preprocessor_macro_1
:description: Read preprocessing macro from template (:defines: marker)
:tags: 5.6.4
:defines: VAR_1=2 VAR_2=5
*/

`define VAR_1 2
`define VAR_2 5

`include "assert.svh"

module top(output reg ERROR);
int a = `VAR_1 + `VAR_2;

initial begin
    ERROR = 0;
    `ASSERT(a == 7);
end

endmodule
