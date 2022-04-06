##
## EPITECH PROJECT, 2021
## task01
## File description:
## tsk01
##

SRC	= 	main.c 		\
		test.c


OBJ     =       $(SRC:.c=.o)

NAME	=	chocolatine

CFLAGS		+=	-Werror -g
CPPFLAGS	+=	-I include/

all:	$(NAME)

$(NAME):	$(OBJ)
	gcc -o $(NAME) $(OBJ) $(CFLAGS) $(CPPFLAGS)

tests_run:
	gcc -o $(NAME) $(SRC) -lcriterion --coverage

clean:
	rm -f $(OBJ)

.PHONY: tests_run clean all