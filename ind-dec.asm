segment .data
    count dw 0
    value db 15

segment .text
    global _start

_start:
    inc [count]
    dec [value]

    mov ebx, count
    inc word [ebx]

    mov esi, value
    dec byte [esi]
