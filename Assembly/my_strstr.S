;;;
;;;  my_strstr.S for Asm in /home/desmar_s/rendu/asm_minilibc/strstr
;;;
;;;  Made by Desmars Sliman
;;;  Login   <desmar_s@epitech.net>
;;;
;;;  Started on  Mon Mar 24 15:30:55 2014 Desmars Sliman
;;;  Last update Mon Mar 24 15:41:45 2014 Desmars Sliman
;;;

[BITS 64]

	global my_strstr

	section .text

nothing:
	mov rax, rdi
	ret

notfind:
	xor rax, rax
	ret

find:
	mov rax, rdx
	ret

comparestrstr:
	inc r9
	inc rdi

	cmp byte [rsi + r9], 0
	je find

	cmp byte [rsi + r9], 0
	je notfind

	mov cl, byte [rsi + r9]
	cmp byte [rdi], cl
	je comparestrstr

strstrloop:
	xor r9, r9
	inc rdi

	mov rdx, rdi
	mov cl, byte [rsi]
	cmp byte [rdi], cl
	je comparestrstr

	cmp byte [rdi], 0
	je notfind

	jmp strstrloop

my_strstr:
	cmp byte [rsi], 0

	je nothing
	dec rdi
	call strstrloop
	ret
