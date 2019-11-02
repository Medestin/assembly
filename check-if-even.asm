section .data
    even_msg db 'Even number!'
    even_len equ $ - even_msg

    odd_msg db 'Odd number!'
    odd_len equ $ - odd_msg

section .text
    global _start

_start:
    mov ax, 9h      ;put 8 in ax
    and ax, 01h     ;and ax with 0000 0001
    jz even         ;jump if zero condition
    mov eax, 4
    mov ebx, 1
    mov ecx, odd_msg
    mov edx, odd_len
    int 0x80
    jmp outprog     ;jump to

even:
    mov eax, 4
    mov ebx, 1
    mov ecx, even_msg
    mov edx, even_len
    int 0x80

outprog:
    mov eax, 1
    int 0x80
