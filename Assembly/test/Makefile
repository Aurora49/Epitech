##
## Makefile for Makefile in /home/desmar_s/rendu/asm_minilibc/test
## 
## Made by Desmars
## Login   <desmar_s@epitech.net>
## 
## Started on  Thu Mar 27 10:43:26 2014 Desmars
## Last update Thu Mar 27 17:09:47 2014 Desmars
##

NAME	=	libasm.so


SRC	=	main.c	\

OBJ	=	$(SRC:.c=.o)

all:	$(OBJ)
# nasm -f elf64 my_strlen.S -o my_strlen.o
# nasm -f elf64 my_strchr.S -o my_strchr.o
# nasm -f elf64 my_memcpy.S -o my_memcpy.o
# nasm -f elf64 my_rindex.S -o my_rindex.o
# nasm -f elf64 my_strcmp.S -o my_strcmp.o
# nasm -f elf64 my_strncmp.S -o my_strncmp.o
	nasm -f elf64 my_strcasecmp.S -o my_strcasecmp.o	
# gcc -shared -o libasm.so my_strlen.o
# gcc -shared -o libasm.so my_strchr.o
# gcc -shared -o libasm.so my_memcpy.o
# gcc -shared -o libasm.so my_rindex.o
# gcc -shared -o libasm.so my_strcmp.o
# gcc -shared -o libasm.so my_strncmp.o
	gcc -shared -o libasm.so my_strcasecmp.o
	gcc -fPIC -c -o main.o main.c
	gcc -o mybin main.o -L. -lasm
	export LD_LIBRARY_PATH="./"
clean:
	rm *.o

fclean:
	rm $(NAME)
