NA = nasm
CC = gcc

NA_FLAGS = -f macho64
NAME = libasm.a
SRCS = srcs/ft_write.s srcs/ft_strlen.s srcs/ft_strcpy.s srcs/ft_strcmp \
		srcs/ft_read.s srcs/ft_strdup.s

OBJS	= ${SRCS:.s=.o}
%.o:			%.s
				$(NA) $(NA_FLAGS) $<

$(NAME)	:	${OBJS}
		${NAME} ${OBJS}

all : ${NAME}

clean :
		rm -f ${OBJS}

fclean : clean
		rm -f ${NAME}

re : fclean all
