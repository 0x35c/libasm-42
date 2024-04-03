; arch	  syscall	return	arg0	arg1	arg2	arg3	arg4	arg5
;-----------------------------------------------------------------------
; x86_64	rax		rax	 	 rdi	rsi		rdx		r10		r8		r9

global ft_write:function
extern error

ft_write:
	mov		rax, 1 ; syscall write
	syscall
	jc		.ERROR
	ret

.ERROR:
	mov		r11, rax
	call	error wrt ..plt
	mov		[rax], r11
	mov		rax, -1
	ret
