program_name := example

build/$(program_name): build/$(program_name).o
	ld -o build/$(program_name) build/$(program_name).o

build/$(program_name).o: src/$(program_name).asm build
	nasm -felf64 -o build/$(program_name).o src/$(program_name).asm

build:
	mkdir build

.PHONY: clean
clean:
	rm -r build

.PHONE: excecute
excecute:
	@./build/$(program_name)