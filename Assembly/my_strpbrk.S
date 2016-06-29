;;; ;
;;; ;  my_strpbrk.S for Asm in /home/desmar_s/rendu/asm_minilibc/strpbrk
;;; ;
;;; ;  Made by Desmars Sliman
;;; ;  Login   <desmar_s@epitech.net>
;;; ;
;;; ;  Started on  Mon Mar 24 15:30:55 2014 Desmars Sliman
;;; ;  Last update Mon Mar 24 15:41:45 2014 Desmars Sliman
;;; ;

[BITS 64]
	global my_strpbrk

	section .text

find:
	mov rax, rdi
	ret

notfind:
	xor rax, rax
	ret

looptwo:
	inc r9
	mov cl, byte [rdi]
	cmp byte [rsi + r9], cl
	je find

	cmp byte [rsi + r9], 0
	jne looptwo

loopone:
	inc rdi

	cmp byte [rdi], 0
	je notfind

	mov r9, -1
	jmp looptwo

my_strpbrk:
	dec rdi
	call loopone
	ret
