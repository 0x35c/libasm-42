; arch	  syscall	return	arg0	arg1	arg2	arg3	arg4	arg5
;-----------------------------------------------------------------------
; x86_64	rax		rax	 	 rdi	rsi		rdx		r10		r8		r9

global	_ft_strdup
extern _malloc
extern _ft_strcpy
extern _ft_strlen

_ft_strdup: ; char *_ft_strdup(const char *s)
	push	rdi
	call	_ft_strlen
	inc		rax
	mov		rdi, rax ; we put the return of strlen in the first param of _malloc
	call	_malloc
	mov		rdi, rax
	pop		rsi
	call	_ft_strcpy
	ret
