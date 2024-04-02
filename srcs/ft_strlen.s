; arch	  syscall	return	arg0	arg1	arg2	arg3	arg4	arg5
;-----------------------------------------------------------------------
; x86_64	rax		rax	 	 rdi	rsi		rdx		r10		r8		r9

global ft_strlen:function

ft_strlen:
	push	rbp
	mov		rbp, rsp
	xor		rcx, rcx
.LOOP:
	cmp		byte [rdi + rcx], 0
	jz		.RETURN
	inc		rcx
	jmp 	.LOOP
.RETURN:
	mov 	rax, rcx
	pop 	rbp
	ret
