; arch	  syscall	return	arg0	arg1	arg2	arg3	arg4	arg5
;-----------------------------------------------------------------------
; x86_64	rax		rax	 	 rdi	rsi		rdx		r10		r8		r9

global	ft_strdup:function

extern malloc
extern ft_strcpy
extern ft_strlen

ft_strdup: ; char *ft_strdup(const char *s)
	push	rdi
	call	ft_strlen
	mov		rdi, rax ; we put the return of strlen in the first param of _malloc
	inc		rdi
	call	malloc wrt ..plt
	pop		rsi
	mov		rdi, rax
	call	ft_strcpy
	ret
