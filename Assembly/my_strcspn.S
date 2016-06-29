;;;
;;;  my_strcspn.S for Asm in /home/desmar_s/rendu/asm_minilibc/strcspn
;;;
;;;  Made by Desmars Sliman
;;;  Login   <desmar_s@epitech.net>
;;;
;;;  Started on  Mon Mar 24 15:30:55 2014 Desmars Sliman
;;;  Last update Mon Mar 24 15:41:45 2014 Desmars Sliman
;;;

[BITS 64]

	global my_strcspn

	section .text

end:
	ret

looptwo:
	inc r9

	mov cl, byte [rdi + r8]
	cmp byte [rsi + r9], cl
	je end

	cmp byte [rsi + r9], 0
	jne looptwo

loopone:
	inc r8

	cmp byte [rdi + r8], 0
	je end

	mov r9, -1
	jmp looptwo

my_strcspn:
	mov r8, -1
	call loopone
	mov rax, r8
	ret
