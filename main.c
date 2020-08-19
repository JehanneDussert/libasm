/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jdussert <jdussert@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/08/19 10:53:39 by jdussert          #+#    #+#             */
/*   Updated: 2020/08/19 15:22:51 by jdussert         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "includes/libasm.h"
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

void	ft_check_strlen(void)
{
	printf("\n*********** STRLEN ***********\n\n");
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%zd]\n", ft_strlen("Hello World !"));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%zd]\n\n", strlen("Hello World !"));
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%zd]\n", ft_strlen(""));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%zd]\n\n", strlen(""));
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%zd]\n", ft_strlen("\n"));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%zd]\n\n", strlen("\n"));
}

void	ft_check_write(void)
{
	printf("\n*********** WRITE ***********\n\n");
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%zd]\n", ft_write(1, "Hello World !", 13));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%zd]\n\n", write(1, "Hello World !", 13));
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%zd]\n", ft_write(-7, "My name is Jehanne !", 20));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%zd]\n\n", write(-7, "My name is Jehanne !", 20));
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%zd]\n", ft_write(1, "", 1));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%zd]\n\n", write(1, "", 1));
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%zd]\n", ft_write(1, "Libasm", 1));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%zd]\n\n", write(1, "Libasm", 1));

}

void	ft_check_read(void)
{
	char	buffer[100];
	int		fd;
	int		errno;


	errno = 0;
	fd = -1;
	printf("\n*********** READ ***********\n\n");
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%ld] | %d\n", ft_read(fd, buffer, 8), errno);
	errno = 0;
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%ld] | %d\n", read(fd, buffer, 8), errno);
	errno = 0;
	fd = open("vide.txt", O_RDONLY);
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%ld] | %d\n", ft_read(fd, buffer, 8), errno);
	close(fd);
	errno = 0;
	fd = open("vide.txt", O_RDONLY);
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%ld] | %d\n", read(fd, buffer, 8), errno);
}

void	ft_check_cmp(void)
{
	printf("\n*********** STRCMP ***********\n\n");
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%d]\n", ft_strcmp("Hello", "Hello"));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%d]\n", strcmp("Hello", "Hello"));
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%d]\n", ft_strcmp("Hello", "Hola"));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%d]\n", strcmp("Hello", "Hola"));
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%d]\n", ft_strcmp("Hello", ""));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%d]\n", strcmp("Hello", ""));
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%d]\n", ft_strcmp("", ""));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%d]\n", strcmp("", ""));
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%d]\n", ft_strcmp("Hello", "Hello�Hi"));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%d]\n", strcmp("Hello", "Hello�Hi"));
}

void	ft_check_cpy(void)
{
	char	dst[500];

	printf("\n*********** STRCPY ***********\n\n");
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%s]\n", ft_strcpy(dst, "Hello"));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%s]\n", strcpy(dst, "Hello"));
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%s]\n", ft_strcpy(dst, ""));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%s]\n", strcpy(dst, ""));
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%s]\n", ft_strcpy(dst, "Bonjour le monde"));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%s]\n", strcpy(dst, "Bonjour le monde"));
}

void	ft_check_strdup(void)
{
	char	*dst;

	dst = NULL;
	printf("\n*********** STRDUP ***********\n\n");
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%s]\n", dst = ft_strdup("Hello"));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%s]\n", dst = strdup("Hello"));
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%s]\n", dst = ft_strdup(""));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%s]\n", dst = strdup(""));
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%s]\n", dst = ft_strdup("Ceci est strdup !"));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%s]\n", dst = strdup("Ceci est strdup !"));
}

t_list	*ft_lstnew(void *data)
{
	t_list  *list;

	if (!(list = malloc(sizeof(t_list))))
		return (NULL);
	list->data = data;
	list->next = NULL;
	return (list);
}

int		ft_lstsize(t_list *lst)
{
	int	len;

	len = 0;
	while (lst)
	{
		lst = lst->next;
		len++;
	}
	return (len);
}

void	ft_lstadd_front(t_list **alst, t_list *new)
{
	if (new != NULL && alst)
	{
		new->next = *alst;
		*alst = new;
	}
}

void	ft_check_lst_size(void)
{
	t_list	*lst;
	t_list	*lst1;
	t_list	*lst2;
	t_list	*lst3;
	
	lst = ft_lstnew("Bonjour ici !");
	lst1 = ft_lstnew("Hello");
	lst2 = ft_lstnew("World");
	lst3 = ft_lstnew("!");
	ft_lstadd_front(&lst3, lst1);
	ft_lstadd_front(&lst3, lst2);
	printf("\n*********** LST_SIZE ***********\n\n");
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%d]\n", ft_list_size(lst));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%d]\n", ft_lstsize(lst));
	printf("\033[33mMine :\033[00m\n");
	printf("\tret : [%d]\n", ft_list_size(lst3));
	printf("\033[35mReal :\033[00m\n");
	printf("\tret : [%d]\n", ft_lstsize(lst3));
}

int		main(void)
{
	ft_check_strlen();
	ft_check_write();
	ft_check_read();
	ft_check_cmp();
	ft_check_cpy();
	ft_check_strdup();
	ft_check_lst_size();
}
