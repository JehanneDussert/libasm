global _ft_strcmp
    section .text
_ft_strcmp :
    push rbx ; i
    push rcx ; s1
    push rdx ; s2
    mov rbx, -1
    mov rcx, rsi
    mov rdx, rdi
_ft_cmp :
    inc rbx
    cmp BYTE [rcx + rbx], 0 ; on verifie que s1 n'est pas finie
    je _ft_equal
    cmp BYTE [rdx + rbx], 0 ; on verifie que s2 n'est pas finie
    je _ft_equal
    mov dl, BYTE [rcx + rbx] ; on cree un tmp pour comparer les str
    cmp dl, BYTE [rdx + rbx]
    jne _ft_sub
    je _ft_cmp
_ft_equal :
    mov rax, 0
    jmp _ft_ret
_ft_sub :
    mov rax, -1
    jmp _ft_ret
_ft_ret :
    pop rbx
    pop rcx
    pop rdx
    ret
    