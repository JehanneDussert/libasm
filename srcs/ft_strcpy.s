global _ft_strcpy
    section .text
_ft_strcpy :
    push rbx ; i
    push rcx ; src
    mov rbx, -1
    mov rcx, rsi
    mov rax, rdi ; dst
_ft_cpy :
    inc rbx
    mov dl, BYTE [rcx + rbx] ; dl = tmp
    mov BYTE [rax + rbx], dl ; on remplit la dst
    cmp dl, 0 ; on verifie que ca n'est pas le dernier char
    je _ft_ret ; si oui = ret
    jne _ft_cpy : si non = on continue le remplissage
_ft_ret  :
    pop rbx ; on libere l'espace de i + src
    pop rcx
    ret
