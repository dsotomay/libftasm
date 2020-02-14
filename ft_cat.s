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
	push	rbx			; save rbx for caller just in case
	mov		ebx, edi	; use ebx to retain fd
	sub		rsp, BUF	; prepare buffer area on stack
	jmp		READ
WRITE:
	mov		rsi, rsp	; set the source starting point at buffer offset
	mov		edi, 1		; set output to stdout
	call	_write
READ:
	mov		edx, BUF	; set read size
	mov		rsi, rsp	; set the source starting point at buffer offset
	mov		edi, ebx	; set read fd
	call	_read
	mov		rdx, rax	; set number of bytes read for the write call
	test	rax, rax	; set flag for jump check
	jg		WRITE
	add		rsp, BUF	; restore stack
	pop		rbx			; reset rbx to original value
	ret
