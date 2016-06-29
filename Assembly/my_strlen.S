;;
;; my_strlen.S for Asm in /home/desmar_s/rendu/asm_minilibc/strlen
;;
;; Made by Desmars
;; Login   <desmar_s@epitech.net>
;;
;; Started on  Mon Mar 24 15:30:55 2014 Desmars Sliman
;; Last update Mon Mar 24 15:41:45 2014 Desmars Sliman
;;

	global my_strlen

my_strlen:
	mov rcx, 0

	.loop:
	cmp BYTE[rdi], 0
	je .ret
	inc rdi
	inc rcx
	jmp .loop

	.ret:
	mov rax, rcx
	ret
