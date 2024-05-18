.global start
.intel_syntax noprefix

start:
    # Write "Hello World"
    mov rax, 0x2000004
    mov rdi, 1
    lea rsi, hello_world[rip]
    mov rdx, 12
    syscall

    # Exit
    mov rax, 0x2000001
    mov rdi, 99
    syscall

hello_world:
    .asciz "Hello World\n"
