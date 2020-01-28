	default	rel

	global	_ft_strdup
	extern	_malloc
	extern	_ft_strlen
section	.text	align=16
_ft_strdup:
	push	rbp
	mov		rbp, 		rsp			;
	mov		r13,		rdi			;
	call	_ft_strlen				;
	lea		rdi,		[rax + 1]	;
	mov		r12,		rdi			;
	call	_malloc					;
	mov		rdi,		rax			;
	mov		rsi,		r13			;
	mov		rcx,		r12			;
	cmp		rax,		0			;
	je		the_end					;
	rep		movsb					;
the_end:
	pop		rbp
	ret

	; note lea	rax, [rax + 1] == inc rax ; functionally equivallent
	; note lea argv[0+1] vs mov argv[0]+1