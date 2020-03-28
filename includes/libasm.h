#ifndef LIBASM_H
# define LIBASM_H

# include <stdio.h>
# include <stdlib.h>

size_t  ft_strlen(const char *str);
char    *ft_strcpy(char * dst, const char * src);
int     ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, char *str, int count);
ssize_t ft_read(int fildes, void *buf, size_t nbyte);
char    *ft_strdup(const char *s1);

#endif
