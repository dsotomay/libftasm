	default	rel

	global	_ft_memcpy
section .text
_ft_memcpy: 		; src and dest pointers should already be set
	mov	rax, rdi	; copy start of dest pointer into return
	mov rcx, rdx	; set number of bytes to copy
	rep movsb
	ret