;;;
;;;  my_rindex.S for Asm in /home/desmar_s/rendu/asm_minilibc/rindex
;;;
;;;  Made by Desmars Sliman
;;;  Login   <desmar_s@epitech.net>
;;;
;;;  Started on  Mon Mar 24 15:30:55 2014 Desmars Sliman
;;;  Laast update Mon Mar 24 15:41:45 2014 Desmars Sliman
;;; 

global my_rindex

	section	.text

my_rindex:
	mov rax, rdi
	mov rbx, rsi

	.loop:
	cmp BYTE [rax], 0
	je .fail
	cmp BYTE [rax], bl
	je .stock
	inc rax
	jmp .loop

	.stock:
	inc rax
	mov r8, rax
	inc rax
	ret
	
	.ret:
	mov rdx, rax
	ret

	.fail:
	xor rax, rax
	
