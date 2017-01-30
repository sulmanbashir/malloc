##
## Makefile for Makefile in /home/bashir_s/rendu/PSU_2014_malloc
## 
## Made by sulman bashir
## Login   <bashir_s@epitech.net>
## 
## Started on  Sat Feb 14 17:09:08 2015 sulman bashir
## Last update Sun Feb 15 21:38:24 2015 sulman bashir
##

CC	= gcc

RM	= rm -f

CFLAGS	+= -fPIC -Wall -Wextra -Werror

LDFLAGS	+= -shared

NAME	= libmy_malloc_$(HOSTTYPE).so

LNAME	= libmy_malloc.so

LINK	= ln -sv

OBJ	= $(SRC:.c=.o)

SRC	= malloc.c

all:		$(NAME)

$(NAME):	$(OBJ)
		$(CC) -o $(NAME) $(OBJ) $(CFLAGS) $(LDFLAGS)
		$(LINK) $(NAME) $(LNAME)
clean:
		$(RM) $(OBJ)

fclean:		clean
		$(RM) $(NAME) $(LNAME)

re:		fclean all

.PHONY:		all clean fclean re
