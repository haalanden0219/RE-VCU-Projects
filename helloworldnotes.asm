global _start ; this is creating the default entry point
; The global may be a directive for the NASM assembler, I may want to use this.
; https://stackoverflow.com/questions/17898989/what-is-global-start-in-assembly-language

section .text ; start of the text section for the code

_start:

    mov eax, 0x4 ; move 4 into eax register
    mov ebx, 0x1 move 1 into the eax register
    mov ecx, message ; move the contents of message into the ecx register
    mov edx, mlen ; move the contents of mlen into edx
    int 0x80 ; int 128 , this call the 80h interupt
    mov eax, 0x1 ; move 1 into the eax register (print syscall I assume?)
    mov ebx, 0x0 ; move 0 into the ebx register
    int 0x80

section .data ; start of data section

    message: db "Hello World" ; storing the message we want to use (being stored as a byte)
    mlen equ $-message ; I think this is storing the message length, I need to read into how this is doing it exactly.
    ; the $ is creating a pointer 
    
    ; the eax is essentially a larger version (I think 32 bit version) of the ax registers
    ; rax would include all 64 bits

    ; Other Notes
    ; We are moving the 0x1 because that is the used for the write syscall
    ; the syscall table might look different depending on 32-bit vs 64-bit
    ; the syscalls seem to use the EAX register, we need to be mindful of this when writing our own code
    ; the int instruction is interesting, I am surprised I haven't noticed it before.
    
