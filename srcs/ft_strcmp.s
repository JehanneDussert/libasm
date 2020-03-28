global _ft_strcmp
    section .text
_ft_strcmp :
    push rbx
    push rcx
    push rdx ; i
    mov rbx, rdi ; s1
    mov rcx, rsi ; s2
    mov rdx, -1
_ft_cmp :
    inc rdx
    cmp BYTE [rbx + rdx], 0 ; on verifie que s1 n'est pas finie
    je _ft_equal
    cmp BYTE [rcx + rdx], 0 ; on verifie que s2 n'est pas finie
    je _ft_equal
    mov al, BYTE [rbx + rdx] ; on cree un tmp pour comparer les str
    cmp al, BYTE [rcx + rdx]
    jne _ft_sub
    jmp _ft_cmp
_ft_equal :
    mov rax, 0
    jmp _ft_ret
_ft_sub :
    mov rax, -1
    jmp _ft_ret
_ft_ret :
    pop rdx
    pop rbx
    pop rcx
    ret
    