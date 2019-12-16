	global	_ft_isprint
section .text
_ft_isprint:
	add		edi, -32	; add -32 to skip the first 32 non printable chars
	xor		eax, eax	; clear	eax
	cmp		edi, 95		; ensure edi is less than 95
	setb	al			; if it's less than 95 al is set to 1
	ret