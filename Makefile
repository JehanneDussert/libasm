NA = nasm
CC = gcc
NA_FLAGS = -f macho64

SRCS = srcs/ft_write.s srcs/ft_strlen.s srcs/ft_strcpy.s srcs/ft_strcmp.s \
		srcs/ft_strdup.s srcs/ft_read.s

OBJS	= ${SRCS:.s=.o}
%.o:	%.s
			$(NA) $(NA_FLAGS) $<

NAME = libasm.a
$(NAME)	: ${OBJS}
		ar rcs ${NAME} ${OBJS}

all : ${NAME}

clean :
		rm -f ${OBJS}

fclean : clean
		rm -f ${NAME}

re : fclean all
