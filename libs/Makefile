CC = cc
CFLAGS = -Wall -Wextra -Werror -g
NAME = libs

LIBFTSRCS = ./ft_atoi.c ./ft_bzero.c ./ft_calloc.c ./ft_isalnum.c ./ft_isalpha.c \
	./ft_isascii.c ./ft_isdigit.c ./ft_isprint.c ./ft_itoa.c ./ft_memchr.c \
	./ft_memcmp.c ./ft_memcpy.c ./ft_memmove.c ./ft_memset.c ./ft_putchar_fd.c \
	./ft_putendl_fd.c ./ft_putnbr_fd.c ./ft_putstr_fd.c ./ft_split.c ./ft_strchr.c \
	./ft_strdup.c ./ft_striteri.c ./ft_strjoin.c ./ft_strlcat.c ./ft_strlcpy.c ./ft_strlen.c .//ft_strmapi.c\
	./ft_strncmp.c ./ft_strnstr.c ./ft_strrchr.c ./ft_strtrim.c ./ft_substr.c \
	./ft_tolower.c ./ft_toupper.c ./count_doubble_array_quantity.c ./copy_dubble_array.c \
	./free_dubble_array.c

LIBFT_OBJS = $(LIBFTSRCS:.c=.o)

PRINTFSRCS = ./ft_printf/ft_printf.c ./ft_printf/ft_print_hex.c ./ft_printf/ft_print_ptr.c \
			 ./ft_printf/ft_print_uns.c ./ft_printf/ft_print_str.c ./ft_printf/put_char_mod.c \
			 ./ft_printf/ft_print_num.c

PRINTFOBJS = $(PRINTFSRCS:.c=.o)

GNLSRCS = ./gnl/get_next_line.c ./gnl/get_next_line_utils.c

GNLOBJS = $(GNLSRCS:.c=.o)

SRCS = $(LIBFTSRCS) $(PRINTFSRCS) $(GNLSRCS)

OBJS = $(LIBFT_OBJS) $(PRINTFOBJS) $(GNLOBJS)

all: $(NAME)

$(NAME): $(OBJS)
	@ar -rcs $(NAME) $(OBJS)

clean:
	@rm -f $(OBJS)
	@rm -f *.o

fclean: clean
	@rm -f $(NAME)

re: fclean $(NAME)
