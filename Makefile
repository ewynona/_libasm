# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: asumerag <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/21 17:43:21 by asumerag          #+#    #+#              #
#    Updated: 2021/02/21 18:20:03 by asumerag         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

NA = nasm

FLAG = -f macho64

SRC = ft_read.s \
	  ft_strcmp.s \
	  ft_strcpy.s \
	  ft_strdup.s \
	  ft_strlen.s \
	  ft_write.s
OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

%.o: %.s
	@$(NA) $(FLAG) $<

clean:
	@rm -rf $(OBJ)

fclean: clean
	@rm -rf $(NAME)
	@rm -rf exec

re: clean all

test: re
	@gcc main.c -L. -lasm -o exec
	@./exec
