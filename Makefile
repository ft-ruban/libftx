#####################################################
#					PROGRAM							#
#####################################################
NAME = libftx.a

#####################################################
#					COMPILING						#
#####################################################
CC = cc
#####################################################
#					DIRECTORY						#
#####################################################
DGNL        = get_next_line
DPRINTF     = printf
#D          =
#####################################################
#					FLAGS							#
#####################################################
CFLAGS = -Wall -Wextra -Werror
#####################################################
#					FILES							#
#####################################################
CFILES = 	ft_atoi.c\
			ft_bzero.c \
			ft_calloc.c \
			ft_isalnum.c \
			ft_isalpha.c \
			ft_isascii.c \
			ft_isdigit.c \
			ft_isprint.c \
			ft_itoa.c \
			ft_itoa_hexx.c\
			ft_memchr.c \
			ft_memcmp.c	\
			ft_memcpy.c	\
			ft_memmove.c \
			ft_memset.c \
			ft_putchar_fd.c \
			ft_putnbr_fd.c \
			ft_putendl_fd.c \
			ft_putstr_fd.c \
			ft_split.c \
			ft_strchr.c \
			ft_strdup.c \
			ft_striteri.c \
			ft_strjoin.c \
			ft_strlcat.c \
			ft_strlcpy.c \
			ft_strlen.c \
			ft_strmapi.c \
			ft_strncmp.c \
			ft_strnstr.c \
			ft_strrchr.c \
			ft_strtoupper.c \
			ft_strtrim.c \
			ft_substr.c \
			ft_tolower.c \
			ft_toupper.c \
			ft_utoa.c \

#SRC?
HEADERS		=	$(DGNL)/get_next_line.h\
				$(DPRINTF)/ft_printf.h\

#####################################################
#					ARCHIVES						#
#####################################################

AR				=	ar
AFLAG			=	rcs
LIBPRINTF		=	$(DPRINTF)/printf.a

all : $(LIBPRINTF) $(NAME)

$(LIBPRINTF):
	$(MAKE) -C $(DPRINTF)

$(NAME): $(HEADERS) Makefile $(SRC)
	$(CC) $(CFLAGS) $(SRC) $(LIBPRINTF)

re: fclean
	$(MAKE) all

fclean: clean 
	rm -f $(NAME)
	$(MAKE) clean -C $(DPRINTF)

clean: 
	$(MAKE) clean -C $(DPRINTF)

#OFILES = $(CFILES:%.c=%.o)

#all: $(NAME)

#$(NAME): $(OFILES)
#	ar rcs $(NAME) $^

#./%.o: ./%.c libft.h Makefile
#	$(CC) $(CFLAGS) -c $< -o $@

#clean:
#	rm -f $(OFILES)

#fclean:
#	$(MAKE) clean
#	rm -f $(NAME)

#re:
#	$(MAKE) fclean 
#	$(MAKE) all

#.PHONY: all clean fclean re
