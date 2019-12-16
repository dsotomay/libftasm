# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dysotoma <dysotoma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/19 23:40:03 by dysotoma          #+#    #+#              #
#    Updated: 2019/12/14 16:03:22 by dysotoma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

AS = nasm
ASFLAGS = -fmacho64
ARFLAGS = -cru

RANLIB = ranlib

NAME = libfts.a
NAMELN = libft_malloc.so
# FLAGS = -g -f macho64 -Wall -Wextra -Werror #-fsanitize=address
SRC =	ft_tolower.s\
		ft_toupper.s\
		ft_isascii.s\
		ft_isdigit.s\
		ft_isprint.s\
		ft_strdup.s\
		ft_strlen.s
		
OBJ	= $(SRC:%.s=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(ARFLAGS) $@ $?
	$(RANLIB) $@
# $(NAME): $(OBJ)
# 	ar rcs $(NAME) $(OBJ)

# $(OBJ):
# 	nasm $(FLAGS) $(SRC)

test: $(NAME)
	$(CC) -g -Wall -Wextra -Werror $(OBJ) test.c
	./a.out

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all 

.PHONY: test all clean fclean re
