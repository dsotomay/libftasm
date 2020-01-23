	default	rel

	global	_ft_strlen
section .text	align=16
_ft_strlen:
	; push	rbp				; save base pointer
	; mov	rbp, rsp		; base pointer = stack pointer creating stack frame
	push	rbx
	push	rcx					; Both of these should be saved
	mov		rbx,	rdi			; rbx = rdi
	xor		rax,	rax			; clear rax for comparison
	mov		rcx,	0xffffffff	; assume max size of string == 4gb:: test with 1 and str of len 2
	repne	scasb				; while rdi != al rdi++
	add		rbx,	1
	sub		rdi,	rbx			; rdi - rbx (larger - smaller)
	mov		rax,	rdi			; rax = rdi
	pop		rcx
	pop		rbx					; prodigal children have returned
	; pop	rbp				
	ret
