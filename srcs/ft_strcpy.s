# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdussert <jdussert@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/19 10:56:00 by jdussert          #+#    #+#              #
#    Updated: 2020/08/19 13:58:41 by jdussert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_strcpy
	section .text
ft_strcpy :
	push rcx ; i
	mov rcx, -1
ft_cpy :
	inc rcx
	mov dl, BYTE [rsi + rcx] ; dl = tmp
	mov BYTE [rdi + rcx], dl ; on remplit la dst
	cmp dl, 0 ; on verifie que ca n'est pas le dernier char
	jne ft_cpy ; si non = on continue le remplissage
ft_ret  :
	mov rax, rdi
	pop rcx ; on libere l'espace
	ret
