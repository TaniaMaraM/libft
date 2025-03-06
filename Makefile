# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmarcos <tmarcos@student.42berlin.de>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/19 10:42:06 by tmarcos           #+#    #+#              #
#    Updated: 2024/12/10 10:24:27 by tmarcos          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libft.a

GREEN		= \033[0;32m
GREY		= \033[0;90m
RED			= \033[0;31m
RESET		= \033[0m

CC 			= cc

FLAGS 		= -Wall -Werror -Wextra

REMOVE 		= rm -f

INCLUDE		= -I .

SRCS 		= ft_isalpha.c 		\
			ft_isdigit.c 		\
			ft_isalnum.c 		\
			ft_isascii.c 		\
			ft_isprint.c 		\
			ft_strlen.c 		\
			ft_memset.c 		\
			ft_bzero.c 			\
			ft_memcpy.c 		\
			ft_memmove.c 		\
			ft_strlcpy.c 		\
			ft_strlcat.c 		\
			ft_toupper.c 		\
			ft_tolower.c 		\
			ft_strchr.c 		\
			ft_strrchr.c 		\
			ft_strncmp.c		\
			ft_memchr.c			\
			ft_memcmp.c			\
			ft_strnstr.c		\
			ft_atoi.c 			\
			ft_strdup.c 		\
			ft_calloc.c 		\
			ft_itoa.c 			\
			ft_substr.c	 		\
			ft_split.c 			\
			ft_strjoin.c 		\
			ft_strtrim.c		\
			ft_strmapi.c 		\
			ft_striteri.c 		\
			ft_putstr_fd.c 		\
			ft_putchar_fd.c 	\
			ft_putendl_fd.c 	\
			ft_putnbr_fd.c		\

BONUS_SRCS  = ft_lstnew.c			\
			ft_lstadd_front.c		\
			ft_lstsize.c			\
			ft_lstlast.c			\
			ft_lstadd_back.c		\
			ft_lstdelone.c			\
			ft_lstclear.c			\
			ft_lstiter.c			\
			ft_lstmap.c				\

OBJS 		= $(SRCS:.c=.o)
BONUS_OBJS 	= $(BONUS_SRCS:.c=.o)

all:		$(NAME)

$(NAME): 	$(OBJS)
			@ar -rcs $(NAME) $(OBJS)
			@echo "$(GREY)Libft: $(GREEN)$(NAME) was created$(RESET)"

bonus:		$(OBJS) $(BONUS_OBJS)
			@ar -rcs $(NAME) $(OBJS) $(BONUS_OBJS)
			@echo "$(GREY)Libft: $(GREEN)$(NAME) was created with Bonus$(RESET)"

%.o: %.c libft.h
			@$(CC) $(FLAGS) $(INCLUDE) -c $< -o $@

clean:
			@$(REMOVE) $(OBJS) $(BONUS_OBJS)
			@echo "$(GREY)Libft: object files were deleted$(RESET)"

fclean:		clean
			@$(REMOVE) $(NAME)
			@echo "$(GREY)Libft: $(NAME) was deleted$(RESET)"

re:			fclean $(NAME)

rebonus:	fclean bonus

# Alvo para rodar os testes
test:       $(NAME)
			@$(CC) $(FLAGS) $(INCLUDE) -o test test.c $(NAME)
			@./test
			@echo "$(GREY)Libft: $(GREEN)test was completed$(RESET)"

# Limpeza dos arquivos de testes
clean_test:
			@$(REMOVE) test
			@echo "$(GREY)Test: $(GREEN)test was deleted$(RESET)"

# Recompila e roda os testes
re_test:    clean_test $(NAME) test
			@./test
			@echo "$(GREY)Test: $(GREEN)test was recompiled and completed$(RESET)"

# Alvo para rodar os bônus
bonus_test: $(OBJS) $(BONUS_OBJS)
			@$(CC) $(FLAGS) $(INCLUDE) -o bonus_test bonus.c $(OBJS) $(BONUS_OBJS)
			@./bonus_test
			@echo "$(GREY)Libft: $(GREEN)bonus was completed$(RESET)"
			
# Limpeza dos arquivos de bônus
clean_bonus_test:
			@$(REMOVE) bonus_test
			@echo "$(GREY)Bonus Test: $(GREEN)bonus_test was deleted$(RESET)"

# Recompila e roda os bônus
re_bonus_test: clean_bonus_test $(NAME) bonus_test
			@./bonus_test
			@echo "$(GREY)Bonus Test: $(GREEN)bonus_test was recompiled and completed$(RESET)"
		
.PHONY:		all clean fclean re bonus rebonus
