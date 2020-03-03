# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vminomiy <vminomiy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/04 15:03:27 by vminomiy          #+#    #+#              #
#    Updated: 2020/02/04 15:18:21 by vminomiy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = gnl.a

SRC = get_next_line.c get_next_line_utils.c

OBJ = $(SRC:.c=.o)

INCLUDE=./

all: $(NAME)

$(NAME): $(SRC) get_next_line.h
	gcc -Wall -Wextra -Werror -D BUFFER_SIZE=32 -I $(INCLUDE) -c $(SRC)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean: rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all