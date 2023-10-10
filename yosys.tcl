
rename eval tcl_eval

yosys -import


if { $argc != 1 } {
  puts "The yosys.tcl script requires a SystemVerilog file to be provided."
  exit 1
} else {
  set test_file [lindex $argv 0]
}

read_verilog -sv $test_file

synth -top top

# https://yosyshq.readthedocs.io/projects/yosys/en/latest/cmd/eval.html
eval          \
  -set-undef  \
  top
