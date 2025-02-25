# Variables
CFILES =	ft_printf.c \
			ft_printf_cases.c \

OFILES = $(CFILES:%.c=%.o)
LIBFT_PATH = ../
LIBFT = $(LIBFT_PATH)/libft.a

# Compiler + flags
CC = cc
CFLAGS = -Wall -Wextra -Werror
# Targets
NAME = printf.a
TEST_EXEC = libftprintf

# Default Rule
all: $(NAME)

# Create the Static Library
 $(NAME): $(OFILES) $(LIBFT)  ft_printf.h
	cp $(LIBFT) $(NAME)
	ar rcs $(NAME) $(OFILES)

# Build object files
%.o: %.c ft_printf.h
	$(CC) $(CFLAGS) -c $< -o $@

# Build the Test Executable
$(TEST_EXEC): $(NAME) main.c 
	$(CC) $(CFLAGS) main.c $(NAME) -o $(TEST_EXEC)

# Clean Object Files
clean:
	rm -f $(OFILES)
	$(MAKE) -C $(LIBFT_PATH) clean

# Clean All Build Artifacts
fclean: clean
	rm -f $(NAME) $(TEST_EXEC)
	$(MAKE) -C $(LIBFT_PATH) fclean || true

re: fclean all

# ensure libft is built before linking
$(LIBFT):
	$(MAKE) -C $(LIBFT_PATH) all
	$(MAKE) -C $(LIBFT_PATH) clean

.PHONY: all clean fclean re
