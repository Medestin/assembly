section .data
    stars times 9 db '*'    ;variable declaration, nine stars  

section .text               
    global _start           ;must be declared for linker

_start:                     ;linker entry point
    mov edx,9               ;message length to edx
    mov ecx,stars           ;message to write to ecx
    mov ebx,1               ;file descriptor(stdout)
    mov eax, 4              ;system call number(sys_write)
    int 0x80                ;call kernel

    mov eax,1               ;system call number(sys_exit)
    int 0x80                ;call kernel
