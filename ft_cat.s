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
	