ASM		= nasm -f elf64
FLAGS	= ld -shared
RM		= rm -rf

NAME	= libasm.so
SRCS	= srcs/strlen.asm \
		  srcs/strcmp.asm \
		  srcs/strncmp.asm \
		  srcs/memset.asm \
		  srcs/memcpy.asm \
		  srcs/strchr.asm

OBJS	= $(SRCS:.asm=.o)

all: $(NAME)

%.o:	%.asm
	$(ASM) $< -o $@

$(NAME): $(OBJS)
	$(FLAGS) $(OBJS) -o $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re