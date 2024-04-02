; arch	  syscall	return	arg0	arg1	arg2	arg3	arg4	arg5
;-----------------------------------------------------------------------
; x86_64	rax		rax	 	 rdi	rsi		rdx		r10		r8		r9

global ft_strcmp:function

ft_strcmp:
	push	rbp
	mov		rbp, rsp
	xor		rcx, rcx
.LOOP:
	mov		dl, byte [rsi + rcx]
	cmp		byte [rdi + rcx], dl ; s1[i] == s2[i]
	jne		.RETURN
	inc		rcx
	jmp		.LOOP
.RETURN:
	; mov		cl, byte [rdi + rcx] ; cpy s1[i] into cl (tmp)
	; sub		cl, dl ; sub s2[i] to s1[i]
	movsx	rax, byte [rdi + rcx] ; cpy result of sub and resize it
	movsx	rcx, byte [rsi + rcx]
	sub		rax, rcx
	pop		rbp
	ret
