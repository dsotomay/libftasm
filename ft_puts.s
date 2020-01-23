	default	rel

	global	_ft_puts
	extern	_write
	extern	_ft_strlen
section .text
_ft_puts:
	push	rbx			; set alignment and save rbx
	mov 	rbx, rdi	; copy input string into rbx
	call	_ft_strlen
	movsxd	rdx, eax	; copy return into rdx and sign extend it
	mov		edi, 1		; set fd of write to 1
	mov		rsi, rbx	; set source of write to input string
	pop		rbx			; restore rbx
	jmp		_write		