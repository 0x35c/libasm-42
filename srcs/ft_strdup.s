global	_ft_strdup
extern _malloc
extern _ft_strcpy
extern _ft_strlen

_ft_strdup: ; char *ft_strdup(const char *s)
	push	rdi
	call	_ft_strlen
	inc		rax
	mov		rdi, rax ; we put the return of strlen in the first param of _malloc
	call	_malloc
	mov		rdi, rax
	pop		rsi
	call	_ft_strcpy
	ret
