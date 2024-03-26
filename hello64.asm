global _start

section .text

_start:

    mov rax, 0x4
    mov rbx, 0x1
    mov rcx, message
    mov rdx, mlen
    int 0x80
    mov rax, 0x1
    mov rbx, 0x0
    int 0x80

section .data

    message: db "Hello World" 
    mlen equ $-message
