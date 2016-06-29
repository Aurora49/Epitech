;;;
;;;  my_strlen.S for Asm in /home/desmar_s/rendu/asm_minilibc/strlen
;;;
;;;  Made by Desmars
;;;  Login   <desmar_s@epitech.net>
;;;
;;;  Started on  Mon Mar 24 15:30:55 2014 Desmars
;;;  Laast update Mon Mar 24 15:41:45 2014 Desmars
;;; 

global my_strchr

	section	.text

my_strchr:
	mov rax, rdi
	mov rbx, rsi

	.loop:
	cmp BYTE [rax], 0
	je .fail
	cmp BYTE [rax], bl
	je .ret
	inc rax
	jmp .loop

	.ret:
	ret

	.fail:
	xor rax, rax
