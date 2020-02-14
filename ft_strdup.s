	default	rel

	global	_ft_strdup
	extern	_malloc
	extern	_ft_strlen
section	.text	align=16
_ft_strdup:
	push	rbp
	mov		rbp, 		rsp			; set base pointer to start of stack
	mov		r13,		rdi			; save src in r13
	call	_ft_strlen
	lea		rdi,		[rax + 1]	; set malloc size to len + 1
	mov		r12,		rdi			; save len + 1 in r12
	call	_malloc
	mov		rdi,		rax			; set dest pointer to newly malloced mem area
	mov		rsi,		r13			; set src pointer
	mov		rcx,		r12			; set number of bytes to copy
	cmp		rax,		0			; make sure rax isn't null
	je		the_end					; if null just end
	rep		movsb					; copy src to dest
the_end:
	pop		rbp
	ret

	; note lea	rax, [rax + 1] == inc rax ; functionally equivallent
	; note lea argv[0+1] vs mov argv[0]+1