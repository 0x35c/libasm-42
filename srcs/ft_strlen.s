global _ft_strlen

_ft_strlen: ; size_t ft_strlen(const char *str)
	xor		rcx, rcx
.LOOP:
	cmp		byte [rdi + rcx], 0
	jz		.RETURN
	inc		rcx
	jmp 	.LOOP
.RETURN:
	mov 	rax, rcx
	ret
