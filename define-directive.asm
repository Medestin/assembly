section .data       ;data section
    choice db 'y'   ;variable choice

section .text       ;code section
    global _start   ;must be defined for linker

_start:             ;linker entry point
    mov edx,1       ;msg length
    mov ecx,choice  ;message to write
    mov ebx,1       ;file descriptor(stdout)
    mov eax,4       ;system call number(sys_write)
    int 0x80        ;call kernel

    mov eax,1       ;system call number(sys_exit)
    int 0x80        ;call kernel
