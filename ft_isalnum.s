	default	rel

	global	_ft_isalnum
section .text
_ft_isalnum:
	lea		eax, [rdi - 48]	; load the value of rdi - 48 into return
	cmp		al, 10			; check that return is between 0 and 9 inclusive
	setb	al				; set return to 1 if so else 0
	and		dil, -33		; normalize the difference between Upper and lowercase
	add		dil, -65		; subtract 65
	cmp		dil, 26			; check that current input value is between 0 and 25 inclusive
	setb	cl				; set cl to 1 if so else 0
	or		cl, al			; if either is true cl stays/becomes 1
	movzx	eax, cl			; copy cl into return and zero extend to clear the rest
	ret