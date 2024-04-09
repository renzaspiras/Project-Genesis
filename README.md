# Live

Just a game still on going written in assembly, and why assembly?
- I just want to torture myself.
- I want to make a ligthweight applications which is friendly with low end devices

***
### Phase 1: Understanding and Learning Assembly
***
#### Assembly Hello World
> Simple Dynamic Hello World in Assembly 
```ASM
section .data
  hello:db 'hello world',0
  hello_len:equ $-hello

section .text
  global _start

_start:
  mov eax, 4
  mov ebx, 1
  mov ecx, hello
  mov edx, hello_len
  int 0x80

  mov eax,1
  mov ebx, ebx
  int 0x80
```

> How to compile it??? think of it that you make the file named hello.asm
```
nasm -f elf32 hello.asm && ld -m elf_i386 -o hello hello.o && ./hello
```