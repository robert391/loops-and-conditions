section .text
  global _start

_start:
  mov ebx, 0
label:
  inc ebx
  cmp ebx, 10
  jl label

  mov eax, 1
  int 0x80