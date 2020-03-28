global _ft_strcpy
    section .text
_ft_strcpy :
    push rcx ; i
    mov rcx, -1
_ft_cpy :
    inc rcx
    mov dl, BYTE [rsi + rcx] ; dl = tmp
    mov BYTE [rdi + rcx], dl ; on remplit la dst
    cmp dl, 0 ; on verifie que ca n'est pas le dernier char
    jne _ft_cpy ; si non = on continue le remplissage
_ft_ret  :
    mov rax, rdi
    pop rcx ; on libere l'espace
    ret
