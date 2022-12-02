# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abeaudui <abeaudui@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/02 13:55:05 by abeaudui          #+#    #+#              #
#    Updated: 2022/12/02 13:56:06 by abeaudui         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC=cc
CFLAGS= -Wall -Wextra -Werror
SRC=   
OBJ= $(SRC:.c=.o)
AR= ar rcs  #ar permet de créer une archive, d'y ajouter ou d'en extraire des fichiers et rcs stand for replace, create and sort
RM= rm -f
NAME= libft.a
INC= ./includes/

all : $(NAME)

${NAME}: ${OBJ}
	 ${AR} ${NAME} ${OBJ}
	
clean : 
		rm -f ${OBJ} $(BONUSOBJS)

fclean: clean
	rm -f ${NAME}

re : fclean all

so:
	$(CC) -nostartfiles -fPIC $(CFLAGS) $(SRC)
	cc -nostartfiles -shared -o libft.so $(OBJ)
.PHONY: clean all fclean re