section .text
	global	_ft_strlen

_ft_strlen:
		mov		rax, -1			; i = -1
loop:	
		inc		rax				; i++
		mov		cl, [rdi + rax]	; cl = *str + i
		cmp		cl, 0			; if (cl != 0)
		jne		loop			;	loop()
		ret						; return (rax)
