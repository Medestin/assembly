section .data                           ;data segment
    userMsg db 'Please enter a number:' ;Message to ask the user for input
    lenUserMsg equ $-userMsg            ;Lenght of message
    dispMsg db 'You have entered: '
    lenDispMsg equ $-dispMsg

section .bss                            ;Uninitialized data
    num resb 5

section .text
    global _start

_start:                 ;User prompt
    mov eax, 4          ;setting eax to 4, which is sys_write
    mov ebx, 1          ;first arg is unsigned int
    mov ecx, userMsg    ;setting text to write 
    mov edx, lenUserMsg ;declaring lenght of the text
    int 80h             ;call kernel to execute

    ;read and store user input
    mov eax, 3          ;3 is sys_read(unsigned int, char *, size_t)
    mov ebx, 2
    mov ecx, num
    mov edx, 5          ;5bytes(numeric, 1 for sign)
    int 80h

    ;output the message
    mov eax, 4
    mov ebx, 1
    mov ecx, dispMsg
    mov edx, lenDispMsg
    int 80h

    ;output the entered number
    mov eax, 4
    mov ebx, 1
    mov ecx, num
    mov edx, 5
    int 80h

    ;exit code
    mov eax, 1
    mov ebx, 0
    int 80h