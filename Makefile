NAME = libasm.a

SRCS =	ft_read.s \
		ft_write.s \
		ft_strcpy.s \
		ft_strdup.s \
		ft_strlen.s \
		ft_strcmp.s \

OBJS =	$(SRCS:.s=.o)

NASM_FLAG = -felf64

all: $(NAME)

$(NAME): $(OBJS)
	ar cr $(NAME) $(OBJS)
	ranlib $(NAME)

$(OBJS): %.o: %.s
	nasm $(NASM_FLAG) -o $@ -s $<

test:
	gcc main.c $(NAME)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)
	rm -f a.out

re: fclean all
