global _ft_write
    section .text

not_ok :
    mov rax, -1
    ret

_ft_write :
    mov rax, 0x02000004
    push rdx
    syscall
    pop rdx
    cmp rax, rdx
    jne not_ok
    ret