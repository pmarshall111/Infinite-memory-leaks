.PHONY: build
build:
	g++ -ggdb main.cpp -o main.tsk

.PHONY: run
run: build
	./main.tsk

.PHONY: debug
debug: build
	# Run gdb with a breakpoint on the stoi func so ewe pause at every loop
	gdb -ex "b stoi" ./main.tsk

.PHONY: heaptrack
heaptrack: build
	# Run heaptrack and the resulting file can then be analysed in heaptrack-gui
	heaptrack ./main.tsk;