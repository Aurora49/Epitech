;;; ;
;;; ;  my_memset.S for Asm in /home/desmar_s/rendu/asm_minilibc/memset
;;; ;
;;; ;  Made by Desmars Sliman
;;; ;  Login   <desmar_s@epitech.net>
;;; ;
;;; ;  Started on  Mon Mar 24 15:30:55 2014 Desmars Sliman
;;; ;  Last update Mon Mar 24 15:41:45 2014 Desmars Sliman
;;; ;

[BITS 64]

	section	.text
	global	strcasecmp

return:
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

strcasecmploop:
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
	je	return

	cmp	rdx, 0
	je	return

	or	rax, rax
	jz	strcasecmploop

	ret

strcasecmp:
	mov	r8, -1
	call	strcasecmploop

	ret
