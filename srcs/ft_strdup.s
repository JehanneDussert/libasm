global _ft_strdup
    section .text
extern _malloc
extern _ft_strlen
extern _ft_strcpy
_ft_strdup :
    push rdi ; i
    call _ft_strlen
    inc rax ; pour le \0
    mov rdi, rax
    call _malloc
    pop rsi
    mov rdi, rax
    call _ft_strcpy
    ret
