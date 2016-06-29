;;; ;
;;; ;  my_memset.S for Asm in /home/desmar_s/rendu/asm_minilibc/memset
;;; ;
;;; ;  Made by Desmars Sliman
;;; ;  Login   <desmar_s@epitech.net>
;;; ;
;;; ;  Started on  Mon Mar 24 15:30:55 2014 Desmars Sliman
;;; ;  Last update Mon Mar 24 15:41:45 2014 Desmars Sliman
;;; ;


	global  my_memcpy

	section .bss


	section .text

my_memcpy:
	.loop:
	cmp rdx, 0
	je .ret
	dec rdx
	mov rdi, [rsi + rdx]
	jmp .loop

	.ret:
	mov rax, rdi
	ret
	        ;; mov rcx, 0

	        ;; .loop:
	        ;; cmp rcx, rdx
	        ;; je .ret
	        ;; cmp BYTE [rsi], 0
	        ;; je .ret
	        ;; cmp BYTE [rdi], 0
	        ;; je .ret
	        ;; mov rax, [rsi]
	        ;; mov [rdi], rax
	        ;; inc rdi
	        ;; inc rsi
	        ;; jmp .loop

	        ;; .ret:
	        ;; mov rax, rdi
	        ;; ret

;;;  main:

;;;       push rbp
;;;       mov rbp, rsp

;;;       mov rdi, Dest
;;;       mov rsi, Src
;;;       mov rdx, Size

;;;       call memcpy

;;;       mov rsp, rbp
;;;       pop rbp

;;;       ret

;;;  read only data
	        section .rodata

	        ;; String  db 'Hello World !',0Ah,0
	        ;; Msg     db '%d',0Ah,0
	        ;; MsgD    db '%s',0Ah,0
	        ;; MsgC    db '%c',0Ah,0
	        ;; MsgP    db '%p',0Ah,0
	        ;; Size    dw 5
	        ;; Value   db 48
