	default	rel

	global	_ft_memset
section .text
_ft_memset:
	mov		r10,	rdi	; save the start of destination
	mov		al,		rsi ; char to copy
	mov		rcx,	rdx ; len
	rep		stosb		; succesively store the byte in al into rdi
	mov		rax,	r10
	ret