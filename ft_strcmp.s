section .text
	global	_ft_strcmp

_ft_strcmp:
	movzx	ax, [rdi]	; ax = *str1
	movzx	bx, [rsi]	; bx = *str2
	cmp		ax, 0		; if (ax == 0)
	je		end			;	end()
	cmp		bx, 0		; if (bx == 0)
	je		end			;	end()
	cmp		ax, bx		; if (ax != bx)
	jne		end			;	end()
	inc		rdi			; *str1 += 1
	inc		rsi			; *str2 += 1
	jmp		_ft_strcmp	; ft_strcmp()

end:
	sub		rax, rbx	; rax = rax - rbx
	ret					; return (rax)
