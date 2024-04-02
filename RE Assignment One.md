# RE Assignment One

## Questions

- I am using NASM. I thought I saw hints that you may have used it. Is it fine if I use it or do I need to do it manually. My only concern is if I use NASM it could be automating setting the flags or linking.
- What are the flags I am suppose to look for? I was able to create the 64-bit version without anything specific.
- What are the specific flags I have to look for? I used the nasm and ld tool. I could look into the specifics of these tools to see what they do under the hood.

## KEY NOTES

- Different Register types to hold 32-bit (EAX) vs 64-bit (RAX).
- EAX is used for the syscalls. This means I need to be mindful when using the register and not waste it on other operations.
- We can actually dump the contents of the .o files and may be able to see there assembly.
- The Compiler/Assembler will create the object file but in most cases the linker is needed to complete the necessary information.
- In ubuntu I was able to use NASM and and the ld linux command to create the 64 bit elf executable. I was able to create a stripped and unstripped version.
- After compiling and Linking, I decided to look at the disassembly. What is interesting is that the labels are missing and I just see addresses (stripped file). I don't actually see the label that is in the original .asm code.

## Requirements

- I was able to see that the program prints out hello world. I was able to see this when running as well as hints in the name and in the data sectino of the .asm file.
- I was able to get it to compile and link with nasm and the ld linux command. I got a 64-bit version running without having to pay attention to anything special.
- Every time a syscall is made we see the `int 0x80` instruction which is used to call a kernel level syscall. This requires the value currently in EAX to be used to determine the syscall. We see that the message is stored in the data and a pointer is mused to get the length of the message.
- It seems the two syscalls made are the print and exit calls. This can be seen [here](https://x86.syscall.sh/). EDX is the buffer size and ECX contains the message.
- I was able to get it to compile to the 32-bit format. The .asm file already had registers that would fit. It was a matter of getting the assembler and linker to work together. Luckily nasm has an option for 32-bit elf files `nasm -f elf32` The Issue I was having was getting the linker to link correctly. I had to use `ld -m elf_i386` to get the linker to recognize the 32-bit architecture I wanted to use.
- I was able to rewrite and compile the program using the 64-bit registers (RAX).

```
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


```

## Quick/Misc Notes

- Int is actually an instruction for interrupt. I read that there is a reason it is 80h.
- Also, I realized the it is always noted whether hex is used. Makes a lot of sense in the machine aspect.
- The syscalls may be different on the different archictecutures (32-bit vs 64-bit). I can see this being easy to confuse.
- RBX is system out, determines where it will be sent (file descriptor) this determines where it would be at.

### NASM Notes

- NASM is creating the the object file .o `nasm -f elf64 helloworld.asm`  
    I will then need to go and link it to an executable file with a linux command ld. `ld -s -o helloworld helloworld.o`

#### More on these commands

- ld is the [gnu linker](https://www.man7.org/linux/man-pages/man1/ld.1.html).
- \-o is to name the output file
- \-s strips the file from all symbols.

### Linker Notes

- for each source code (.c) file the compiler and assembler generate the .o object file with the .data and .text sections.
- The linker will then merge the two sections into one single section.
- I have the option to strip or not.
- Different registers calling convention for 64 bit


## Post Submission Review
- RBX/RDI is the file descriptor. This determines where to output the function. This could be a file or the system out.
- Due to backwards compatability I was able to use some 32-bit calling conventions. My program was slightly wrong. This made sense as I was confused about the different register conventions for 32-bit and 64-bit syscalls. Below is my fixed version of the code with the 64 bit conventions.

```
global _start

section .text

_start:

    mov rax, 1
    mov rdi, 0x1
    mov rsi, message
    mov rdx, mlen
    syscall
    mov rax, 60
    mov rdi, 0x0
    syscall

section .data

    message: db "Hello World" 
    mlen equ $-message


```
## References

- https://web.stanford.edu/~ouster/cs111-spring21/lectures/linkers/