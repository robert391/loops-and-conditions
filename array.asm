section .text
  global _start

_start:
  mov eax, 3
  mov ebx, [array]  ;initialize with the value of the first element of the array
  mov ecx, array

top:
  cmp ebx, [ecx]
  jg cnt
  mov ebx, [ecx]

cnt:
  add ecx, 4
  dec eax

  jnz top

exit:
  mov eax, 1
  int 0x80

section .data
  array dd 5, 15, 10
