	default	rel

	global	_ft_tolower
section	.text
_ft_tolower:
	lea		ecx, [rdi - 65]	; subtract 65 from current address and store it
	lea		eax, [rdi + 32]	; add 32 to the current address and store it in return
	cmp		ecx, 26			; ensure ecx is less than 26
	cmovae	eax, edi		; if it's greater than 25 then the character was either not uppercase or not a letter and so moves the original address (rdi) back into return
	ret
