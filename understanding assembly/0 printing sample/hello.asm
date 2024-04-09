; TERMINOLOGIES
; - db: Define Bytes --> Similar to Strings in C language
; - dd: Double Words of Data --> Similar to Double in C language

section .data
  hello: db 'Hello World', 0
  hi db 'hi', 0
  ln db 10, 0 ; the acii next line in asm  

section .text
  global _start

_start:
  ;Simple Print
  mov eax, 4    ; syscall number for sys_write
  mov ebx, 1    ; file descriptor 1 (stdout)
  mov ecx, hello ; number of characters
  mov edx, 11
  int 0x80      ; invoke syscall

  ;next line
  mov eax, 4
  mov ebx, 1
  mov ecx, ln
  mov edx, 3
  int 0x80

  ; Decrement the counter

  mov eax, 4
  mov ebx, 1
  mov ecx, hi
  mov edx, 2
  int 0x80

  ; Exit Program --> Similar to (return 0) in C language
  mov eax, 1
  xor ebx, ebx
  int 0x80

; Compile and Run 
;nasm -f elf32 hello.asm && ld -m elf_i386 -o hello hello.o && ./hello
