bits 64

_start:
    mov rdi, 1
    lea rsi, [rel binfun]
    mov rdx, binfun_str_len
    mov rax, 1
    syscall
    mov rdi, 0
    mov rax, 0x3c
    syscall

binfun:
    db "Binary Fun Infection!",0xa,0
binfun_str_len equ $-binfun
