# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dysotoma <dysotoma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/19 23:40:03 by dysotoma          #+#    #+#              #
#    Updated: 2019/11/12 22:06:31 by dysotoma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
NAMELN = libft_malloc.so
FLAGS = -g -c -Wall -Wextra -Werror #-fsanitize=address
SRC = 
OBJ	= $(SRC:%.s=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

$(OBJ):
	nasm $(FLAGS) $(SRC)

test:
	nasm -g -Wall -Wextra -Werror $(SRC) test.c

clean:
	/bin/rm -f $(OBJ)
	make clean -C libft/

fclean: clean
	/bin/rm -f $(NAME)
	/bin/rm -f $(NAMELN)
	make fclean -C libft/

re: fclean all 

.PHONY: test all clean fclean re
