	default	rel

	global	_ft_bzero
	extern	_ft_memset
section .text
_ft_bzero:
	mov		rdx, rsi	; set len to clear
	xor		rsi, rsi	; set value to copy as 0
	call	_ft_memset
	ret
