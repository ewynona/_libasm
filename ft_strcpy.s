section .text
	global	_ft_strcpy

_ft_strcpy:
		mov		rax, -1			; i = -1
loop:	
		inc		rax				; i++
		mov		dl, [rsi+rax]	; dl = *str2 + i
		mov		[rdi+rax], dl	; *str1 + i = dl
		cmp		dl, 0			; if (dl != 0)
		jne		loop			;	loop()
		jmp		end				; end()
end:
		mov		rax, rdi		; str = str1
		ret						;
