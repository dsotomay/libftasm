	default	rel

	global _ft_strcat
	extern _ft_strlen
section .text	align=16
_ft_strcat:
	push	rbp
	mov		rbp, rsp
	push	rbx
	push	rcx
	cmp		rdi, 0
	je		end
	cmp		rsi, 0
	je		end				; if either is null just leave
	mov		rbx, rdi		; copy dest into rbx
	xor		rax, rax
	mov		rcx, 0xffffffff
	repne	scasb			; move to the end of dest
	sub		rdi, 1			; move dest pointer back by one to null byte
	push	rdi				; save rdi
	mov		rdi, rsi
	call	_ft_strlen
	pop		rdi
	lea		rcx, [rax + 1]
	repne	movsb			; copy src onto the end of dest
end:
	mov		rax, rbx
	pop		rcx
	pop		rbx
	pop		rbp
	ret
