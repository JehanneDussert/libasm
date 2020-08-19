# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdussert <jdussert@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/19 10:55:51 by jdussert          #+#    #+#              #
#    Updated: 2020/08/19 13:58:06 by jdussert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_strcmp
	section .text
ft_strcmp :
	mov al, BYTE[rdi] ; s1
	mov bl, BYTE[rsi] ; s2
	cmp al, 0 ; on verifie que s1 n'est pas finie
	jz ft_ret
	cmp bl, 0 ; on verifie que s2 n'est pas finie
	jz ft_ret
	cmp al, bl
	jne ft_ret
	inc rdi
	inc rsi
	jmp ft_strcmp
ft_ret :
	sub rax, rbx
	jl ft_sub
	je ft_equal
	mov rax, 1
	ret
ft_equal :
	mov rax, 0
	ret
ft_sub :
	mov rax, -1
	ret
