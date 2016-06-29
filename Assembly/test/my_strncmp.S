;;;
;;;  my_strlen.S for Asm in /home/desmar_s/rendu/asm_minilibc/strlen
;;;
;;;  Made by Desmars
;;;  Login   <desmar_s@epitech.net>
;;;
;;;  Started on  Mon Mar 24 15:30:55 2014 Desmars
;;;  Last update Mon Mar 24 15:41:45 2014 Desmars
;;;


global	my_strncmp

	section .text

my_strncmp:


	.loop:
	mov al, byte [rsi]
	cmp rdx, 0
	je .zero
	dec rdx
	cmp BYTE [rdi], al
	jne .result

	cmp BYTE [rdi], 0
	je .zero
	cmp BYTE [rsi], 0
	je .zero
	inc rdi
	inc rsi

	jmp .loop
	.ret:
	ret

	.zero:
	xor rax, rax

	.result	:
	movzx rax, byte [rdi]
	movzx r8, byte [rsi]

	sub rax, r8
