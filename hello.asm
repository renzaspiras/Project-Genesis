section .data
  streng db 'hipopopopopotamussssssssssssssssssssssss',0
  len equ $-streng

section .text
  global _start

_start:
  mov eax,4
  mov ebx,1
  mov ecx,streng
  mov edx,len
  int 0x80

  mov eax,1
  mov ebx,ebx
  int 0x80