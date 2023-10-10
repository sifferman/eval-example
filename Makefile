
TESTS := \
 tests/chapter-10/10.4.1--blocking-assignment.sv \
 tests/chapter-5/5.6.4--compiler-directives-preprocessor-macro_1.sv \
 tests/chapter-7/arrays/packed/equality.sv \
 tests/chapter-7/arrays/packed/onebit.sv \
 tests/chapter-7/memories/read-write.sv \
 tests/chapter-7/structures/packed/basic.sv \
 tests/chapter-7/structures/packed/signed.sv \
 tests/chapter-7/structures/packed/unsigned.sv \
 tests/chapter-7/unions/packed/basic.sv

TOOLS := synlig yosys

regex := "Eval result: \\\\ERROR = 1'0."

all::

define make_run_target
run___TEST-$1___TOOL-$2:
	test=$1 tool=$2 && \
	mkdir -p build/$(dir ${test}) && \
	cd build/$(dir ${test}) && \
	yosys -l $(notdir $(1:.sv=__${tool}.log)) -p 'tcl $(CURDIR)/${tool}.tcl $(CURDIR)/${test}' && \
	grep -q ${regex} $(notdir $(1:.sv=__${tool}.log))
all:: run___TEST-$1___TOOL-$2
endef

$(foreach test,$(TESTS),$(foreach tool,$(TOOLS),$(eval $(call make_run_target,$(test),$(tool)))))

clean:
	rm -rf build
