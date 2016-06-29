##
## Makefile for Makefile in /home/desmar_s/rendu/asm_minilibc/test
## 
## Made by Desmars
## Login   <desmar_s@epitech.net>
## 
## Started on  Thu Mar 27 10:43:26 2014 Desmars
## Last update Sun Mar 30 20:50:15 2014 Desmars
##

NAME		=	a.out

LIB_NAME	=	libasm.so

SRC		=	main.c		\

OBJ		=	$(SRC:.c=.o)


ASM_SRC		=	strlen/my_strlen.S		\
			strchr/my_strchr.S		\
			rindex/my_rindex.S		\
			strcmp/my_strcmp.S		\
			strncmp/my_strncmp.S		\
			strcasecmp/my_strcasecmp.S	\
			strstr/my_strstr.S		\
			strcspn/my_strcspn.S		\
			strpbrk/my_strpbrk.S		\
			memset/my_memset.S		\


ASM_OBJ		=	strlen/my_strlen.o		\
			strchr/my_strchr.o		\
			rindex/my_rindex.o		\
			strcmp/my_strcmp.o		\
			strncmp/my_strncmp.o		\
			strcasecmp/my_strcasecmp.o	\
			strstr/my_strstr.o		\
			strcspn/my_strcspn.o		\
			strpbrk/my_strpbrk.o		\
			memset/my_memset.o		\

RM		=	rm

all:	$(OBJ)
# nasm -f elf64 strlen/my_strlen.S -o strlen/my_strlen.o
# nasm -f elf64 strchr/my_strchr.S -o strchr/my_strchr.o
# nasm -f elf64 my_memcpy.S -o my_memcpy.o
# nasm -f elf64 my_rindex.S -o my_rindex.o
# nasm -f elf64 my_strcmp.S -o my_strcmp.o
# nasm -f elf64 my_strncmp.S -o my_strncmp.o
# nasm -f elf64 my_strcasecmp.S -o my_strcasecmp.o	
# gcc -shared -o libasm.so my_strlen.o
# gcc -shared -o libasm.so my_strchr.o
# gcc -shared -o libasm.so my_memcpy.o
# gcc -shared -o libasm.so my_rindex.o
# gcc -shared -o libasm.so my_strcmp.o
# gcc -shared -o libasm.so my_strncmp.o
	gcc -o $(NAME) $(OBJ) -L. -lasm
# export LD_LIBRARY_PATH="./"

clean:
	$(RM) $(OBJ)
	$(RM) $(ASM_OBJ)

fclean:
	rm $(NAME)
	rm $(LIB_NAME)
lib:
	nasm -f elf64 strlen/my_strlen.S -o strlen/my_strlen.o
	nasm -f elf64 strchr/my_strchr.S -o strchr/my_strchr.o
	nasm -f elf64 rindex/my_rindex.S -o rindex/my_rindex.o
	nasm -f elf64 strcmp/my_strcmp.S -o strcmp/my_strcmp.o
	nasm -f elf64 strncmp/my_strncmp.S -o strncmp/my_strncmp.o
	nasm -f elf64 strcasecmp/my_strcasecmp.S -o strcasecmp/my_strcasecmp.o
	nasm -f elf64 strstr/my_strstr.S -o strstr/my_strstr.o
	nasm -f elf64 strcspn/my_strcspn.S -o strcspn/my_strcspn.o
	nasm -f elf64 strpbrk/my_strpbrk.S -o strpbrk/my_strpbrk.o
	nasm -f elf64 memset/my_memset.S -o memset/my_memset.o
	gcc -shared -o $(LIB_NAME) $(ASM_OBJ)
	gcc -fPIC -c -o main.o main.c

export:
	export LD_LIBRARY_PATH="./";
