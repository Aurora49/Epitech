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
	global my_memset

	section .text

my_memset:
	push rbp
	push rdi
	push rdx
	push rcx

	mov rbp, rsp
	mov rax, rdi
	mov rcx, rsi

loop:
	cmp edx, 0
	je end
	mov BYTE [rdi], cl
	dec edx
	inc rdi
	jmp loop

end:
	mov rsp, rbp
	pop rcx
	pop rdx
	pop rdi
	pop rbp
	ret
