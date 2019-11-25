	global	_ft_toupper
_ft_toupper:
	lea		ecx, [rdi - 97]
	lea		eax, [rdi - 32]
	cmp		ecx, 26
	cmovae	eax, edi
	ret
