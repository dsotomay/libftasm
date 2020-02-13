	default	rel

	global	_ft_cat
	extern	_write
	extern	_read
%ifndef	BUF
%define	BUF 1024
%elif	BUF <= 0 || BUF >= 8388608
%define	BUF 1024
%endif
section .text	align=16
_ft_cat:
	push	rbx
	mov		ebx, edi
	sub		rsp, BUF
	jmp		READ
WRITE:
	mov		rsi, rsp
	mov		edi, 1
	call	_write
READ:
	mov		edx, BUF
	mov		rsi, rsp
	mov		edi, ebx
	call	_read
	mov		rdx, rax
	test	rax, rax
	jg		WRITE
	add		rsp, BUF
	pop		rbx
	ret
