	global	_ft_isascii
section .text
_ft_isascii:
	xor		eax, eax	; clear	eax
	cmp		edi, 128	; ensure edi is less than 128
	setb	al			; if it's less than 128 al is set to 1
	ret