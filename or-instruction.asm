;should store 7 in AL

section .bss
    result resb 1

section .text
    global _start

_start:
    mov al, 5   ;5 = 0000 0101
    mov bl, 3   ;3 = 0000 0011
    or al,bl    ;x = 0000 0111 = 7

    add al, byte '0'    ;convert decimal less than 10 to ascii

    mov [result], al
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

    mov eax, 1
    int 0x80
