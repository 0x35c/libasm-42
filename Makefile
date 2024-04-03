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

SRCS =	ft_strlen.s\
		ft_strcpy.s\
		ft_strcmp.s\
		ft_write.s\
		ft_read.s\
		ft_strdup.s\
	
CC = nasm

FLAGS = -felf64 -g

OBJS := $(addprefix objs/, $(SRCS:.s=.o))

all: $(NAME) 

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

objs/%.o: srcs/%.s
	@mkdir -p $(@D)
	$(CC) $(FLAGS) $< -o $@

clean:
	@rm -rf objs/

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
