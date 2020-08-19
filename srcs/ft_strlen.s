# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdussert <jdussert@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/19 10:56:18 by jdussert          #+#    #+#              #
#    Updated: 2020/08/19 14:00:00 by jdussert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_strlen
	section .text
ft_strlen :
	push rcx
	xor	rcx, rcx
ft_cmp :
	cmp BYTE [rdi], 0
	jz ft_ret
	inc rcx
	inc rdi
	jmp ft_cmp
ft_ret  :
	mov rax, rcx
	pop rcx
	ret
