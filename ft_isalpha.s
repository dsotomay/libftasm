	default	rel

	global	_ft_isalpha
section	.text
_ft_isalpha:
	and		dil, -33 ; normalize the difference between Upper and lowercase
	add		dil, -65 ; subtract 65
	xor		eax, eax ; clear return
	cmp		dil, 26  ; check that current input value is between 0 and 25 inclusive
	setb	al		 ; if it is set return to 1
	ret