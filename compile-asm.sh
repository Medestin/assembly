#! /bin/bash

name=${1%.*}

nasm -f elf $1
ld -m elf_i386 -s -o $name $name.o
