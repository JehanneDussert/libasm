# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdussert <jdussert@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/19 10:56:08 by jdussert          #+#    #+#              #
#    Updated: 2020/08/19 13:59:12 by jdussert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_strdup
	section .text
extern malloc
extern ft_strlen
extern ft_strcpy
ft_strdup :
	push rdi ; index i
	call ft_strlen
	inc rax ; on prevoit un espace en plus pour le \0
	mov rdi, rax
	call malloc
	pop rsi ; on recupere rsi = ancienne rdi = src
	mov rdi, rax
	call ft_strcpy ; avec rdi = dst et rsi = src
	ret
