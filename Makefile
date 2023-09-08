
build/mbr: build/mbr.o
	ld -o build/mbr build/mbr.o

build/mbr.o: src/mbr.asm build
	nasm -felf64 -o build/mbr.o src/mbr.asm

build:
	mkdir build

.PHONY: clean
clean:
	rm -r build