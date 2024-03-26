# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ulayus <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/30 11:40:22 by ulayus            #+#    #+#              #
#    Updated: 2024/03/26 16:21:44 by ulayus           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRCS =	\
	
HDR_DIR := includes/

CC = nasm

CFLAGS = -Wall -Wextra -Werror

OBJS := $(addprefix objs/, $(SRCS:.c=.o))

all: $(NAME) 

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)
	echo "$(NAME) compiled"

objs/%.o: srcs/%.c
	mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $< -o $@ -I$(HDR_DIR)

clean:
	rm -rf objs/
	echo "$(NAME) objects removed"

fclean: clean
	rm -f $(NAME)
	echo "$(NAME) binary removed"

re: fclean all

.PHONY: all clean fclean re
