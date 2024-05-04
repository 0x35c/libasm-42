global _ft_strcmp

_ft_strcmp: ; int ft_strcmp(const char *s1, const char *s2)
	xor		rcx, rcx
	cmp		byte [rdi], 0
	jz		.RETURN
	cmp		byte [rsi], 0
	jz		.RETURN
.LOOP:
	mov		dl, byte [rsi + rcx]
	cmp		byte [rdi + rcx], dl ; s1[i] == s2[i]
	jne		.RETURN
	inc		rcx
	jmp		.LOOP
.RETURN:
	movsx	rax, byte [rdi + rcx]
	movsx	rcx, byte [rsi + rcx]
	sub		rax, rcx ; s1[i] - s2[i]
	ret
