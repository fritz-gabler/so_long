NAME := so_long

CC = cc
CFLAGS = -Wall -Wextra -Werror -g
USER = $(shell brew --prefix glfw)/lib/
MLXFLAGS = -framework Cocoa -framework OpenGL -framework IOKit -Iinclude -lglfw -L"$(USER)"
AR		 = ar rcs
RM		 = rm -rf
#FSANITIZE = -fsanitize=address -g

VPATH := utils


SRC = ./so_long.c end_game.c  show_movments.c ./check_map.c ./collect_items.c \
	 	./get_map_input.c ./game_funktions.c ./hook_funktions.c \
		./print_map_and_error.c ./fill_map_with_components.c \
		./map_ingredients_check01.c ./validate_map_path.c wall_check.c \
		./map_ingredients_check02.c

OBJS = $(SRC:.c=.o)

all: $(NAME)

LIBFT =	./libs/libs
MLX42 =	./MLX42/build/libmlx42.a

$(NAME):	$(LIBFT) $(MLX42) $(OBJS)
			$(CC) $(CFLAGS) $(OBJS) $(FSANITIZE) $(MLX42) $(LIBFT) -o $(NAME) $(MLXFLAGS)

$(LIBFT):
			@cd libs && make && make clean

$(MLX42):
			@if [ ! -d "MLX42" ]; then git clone https://github.com/codam-coding-college/MLX42.git; fi
			@cd MLX42 && cmake -B build && cmake --build build -j4

clean:
			@rm -f $(OBJS)


fclean:		clean
			@rm -f $(NAME)
			@rm -rf MLX42
			@rm -rf ./libs/libs

re: fclean all

libft: $(LIBFT)
mlx: $(MLX42)

.PHONY: all clean fclean re
