;;;
;;;  my_strcmp.S for Asm in /home/desmar_s/rendu/asm_minilibc/strcmp
;;;
;;;  Made by Desmars Sliman
;;;  Login   <desmar_s@epitech.net>
;;;
;;;  Started on  Mon Mar 24 15:30:55 2014 Desmars Sliman
;;;  Last update Mon Mar 24 15:41:45 2014 Desmars Sliman
;;;


global	my_strcmp

	section .text

my_strcmp:

	.loop:
	mov al, byte [rsi]
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
