# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dysotoma <dysotoma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/19 23:40:03 by dysotoma          #+#    #+#              #
#    Updated: 2019/11/15 17:28:43 by dysotoma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
NAMELN = libft_malloc.so
FLAGS = -g -f macho64 -Wall -Wextra -Werror #-fsanitize=address
SRC = 
OBJ	= $(SRC:%.s=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

$(OBJ):
	nasm $(FLAGS) $(SRC)

test:
	nasm -g -Wall -Wextra -Werror $(SRC) test.s
	ld $(OBJ)
	sh ./a.out

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all 

.PHONY: test all clean fclean re
