;following program stores a name 'Zara Ali'
;in the data section of the memory
;then changes its value to another name
;'Nuha Ali' programatically and displays both

section .data               ;data section of the program
    name db 'Zara Ali '     ;stores name 'Zara Ali'

section .text               ;text section(code)
    global _start           ;must be declared for linker(ld)
_start:                     ;tell linker entry point

    ;writing name 'Zara Ali'
    mov edx, 9              ;message length to edx
    mov ecx, name           ;store name in ecx
    mov ebx, 1              ;file descriptor(stdout)
    mov eax, 4              ;system call number(sys_write)
    int 80h                 ;call kernel

    mov [name], dword 'Nuha';Changed the name to `Nuha Ali`

    ;writing name 'Nuha Ali'
    mov edx, 8
    mov ecx, name
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax,1               ;system call number(sys_exit)
    int 0x80                ;call kernel
