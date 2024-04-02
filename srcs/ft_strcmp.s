; arch	  syscall	return	arg0	arg1	arg2	arg3	arg4	arg5
;-----------------------------------------------------------------------
; x86_64	rax		rax	 	 rdi	rsi		rdx		r10		r8		r9

global ft_strcmp:function

ft_strcmp:
	xor		rcx, rcx
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
