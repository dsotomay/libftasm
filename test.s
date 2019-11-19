; 	global	_main
; 	extern	_puts
; 	extern	_ft_tolower

; 	section	.text
; _main:
; 	push	rbx
; 	mov		rdi, 'A'
; 	call	_ft_tolower
; 	mov		rdi, rax

          global    _main
          extern    _puts

          section   .text
_main:    push      rbx                     ; Call stack must be aligned
          lea       rdi, [rel message]      ; First argument is address of message
          call      _puts                   ; puts(message)
          pop       rbx                     ; Fix up stack before returning
          ret

          section   .data
message:  db        "Hola, mundo", 0        ; C strings need a zero byte at the end