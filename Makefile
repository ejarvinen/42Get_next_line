CFILES = main.c get_next_line.c get_next_line_utils.c

OFILES = $(CFILES:.c=.o)

CC = cc

CFLAGS = -Wall -Wextra -Werror

NAME = get_next_line

all: $(NAME)

$(NAME): $(OFILES)
	$(CC) $(CFLAGS) $(OFILES) -o $(NAME)
	
clean:
	rm -f $(OFILES)
	
fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re 