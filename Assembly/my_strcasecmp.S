;;;
;;;  my_strcasecmp.S for Asm in /home/desmar_s/rendu/asm_minilibc/strcasecmp
;;;
;;;  Made by Desmars Sliman
;;;  Login   <desmar_s@epitech.net>
;;;
;;;  Started on  Mon Mar 24 15:30:55 2014 Desmars Sliman
;;;  Laast update Mon Mar 24 15:41:45 2014 Desmars Sliman
;;; 

	global	my_strcasecmp

ret:
	ret

changefirst:
	add	rcx, 32
	jmp	afterfirst

changesecond:
	add	rdx, 32
	jmp	aftersecond

firstchr:
	cmp	rcx, 'Z'
	jle	changefirst
	jmp	afterfirst

secondchr:
	cmp	rdx, 'Z'
	jle	changesecond
	jmp	aftersecond

loop:
	inc	r8
	movzx	rcx, byte [rdi + r8]
	movzx	rdx, byte [rsi + r8]
	cmp	rcx, 'A'
	jge	firstchr

afterfirst:
	cmp	rdx, 'A'
	jge	secondchr

aftersecond:
	mov	rax, rcx
	sub	rax, rdx
	cmp	rcx, 0
	je	ret
	cmp	rdx, 0
	je	ret
	or	rax, rax
	jz	loop
	ret

my_strcasecmp:
	mov	r8, -1
	call	loop
	ret
