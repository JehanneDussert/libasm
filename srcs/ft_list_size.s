# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_list_size.s                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdussert <jdussert@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/19 11:29:10 by jdussert          #+#    #+#              #
#    Updated: 2020/08/19 13:29:37 by jdussert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_list_size
	section .txt
ft_list_size :
	xor rax, rax
ft_size :
	cmp rdi, 0
	je ft_ret
	inc rax
	mov rdi, [rdi + 8]
	jne ft_size
ft_ret :
	ret
