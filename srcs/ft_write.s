# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdussert <jdussert@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/19 10:56:28 by jdussert          #+#    #+#              #
#    Updated: 2020/08/19 14:00:37 by jdussert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	ft_write
	section	.text
extern	__errno_location
ft_write:
    mov rax, 1
	syscall
	cmp rax, 0
    jl ft_error
    ret
ft_error:
	mov r8,rax
	call __errno_location
	neg r8
	mov [rax], r8
	mov rax, -1
	ret
