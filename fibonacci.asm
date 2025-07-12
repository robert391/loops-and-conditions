section .text
  global _start

_start:
  mov eax, 0
  mov ebx, 1
  mov ecx, 9

label:
  add eax, ebx
  mov edx, eax
  mov eax, ebx
  mov ebx, edx
  loop label

exit:
  mov [result], ebx
  mov eax, 1
  int 0x80

segment .bss
  result resd 1
