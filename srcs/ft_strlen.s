global _ft_strlen
    section .text
_ft_strlen :
    push  rcx
    xor   rcx, rcx
_ft_cmp :
    cmp BYTE [rdi], 0
    jz _ft_ret
    inc rcx
    inc rdi
    jmp _ft_cmp
_ft_ret  :
    mov rax, rcx
    pop rcx
    ret
