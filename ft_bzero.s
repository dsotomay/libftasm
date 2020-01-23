	default	rel

	global	_ft_bzero
	extern	_ft_memset
section .text
_ft_bzero:
	mov		rdx, rsi
	xor		rsi, rsi
	call	_ft_memset
	ret
