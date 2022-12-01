# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kslik <kslik@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/29 10:46:51 by kslik             #+#    #+#              #
#    Updated: 2022/12/01 10:07:40 by kslik            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

OBJECTS	=ft_printf.c \
		 ft_printf_utils.c \
		 ft_printf_utils1.c
DEPO = ft_printf.h
CC	= gcc
OUZ	= $(OBJECTS:.c=.o)
CFLAGS	= -Werror -Wextra -Wall
NAME	=libftprintf.a

$(NAME):	$(OUZ)
				ar rc ${NAME} $^
all:	${NAME}

clean:
		rm -rf ${OUZ}
fclean:		clean
			rm -rf ${OUZ} ${NAME}
re:
	fclean all