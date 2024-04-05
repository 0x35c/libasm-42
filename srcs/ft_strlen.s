; arch	  syscall	return	arg0	arg1	arg2	arg3	arg4	arg5
;-----------------------------------------------------------------------
; x86_64	rax		rax	 	 rdi	rsi		rdx		r10		r8		r9

global _ft_strlen

_ft_strlen: ; size_t _ft_strlen(const char *str)
	xor		rcx, rcx
.LOOP:
	cmp		byte [rdi + rcx], 0
	jz		.RETURN
	inc		rcx
	jmp 	.LOOP
.RETURN:
	mov 	rax, rcx
	ret
