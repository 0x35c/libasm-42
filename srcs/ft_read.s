; arch	  syscall	return	arg0	arg1	arg2	arg3	arg4	arg5
;-----------------------------------------------------------------------
; x86_64	rax		rax	 	 rdi	rsi		rdx		r10		r8		r9

global _ft_read
extern ___error

_ft_read:
	mov		rax, 0x02000003 ; syscall read
	syscall
	jc		.ERROR
	ret

.ERROR:
	push	rax
	call	___error
	pop		rdx
	mov		[rax], rdx
	mov		rax, -1
	ret
