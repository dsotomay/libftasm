	default	rel

	global	_ft_isdigit
section .text
_ft_isdigit:
	add		edi, -48	; add -48 to skip the first 48 non numeric chars
	xor		eax, eax	; clear	eax
	cmp		edi, 10		; ensure edi is less than 10
	setb	al			; if it's less than 96 al is set to 1
	ret