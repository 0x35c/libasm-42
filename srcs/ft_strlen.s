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
	inc rcx
	jmp .LOOP
.RETURN:
	mov rax, rcx
	pop rbp
	ret
	


; ft_strlen:
; 	push	rbp
; 	mov		rbp, rsp
; 	mov		qword [rbp - 8], rdi ; char *str / arg1
; 	mov		dword [rbp - 12], 0 ; int i = 0;
; .LOOP:
; 	mov		rax, qword [rbp - 8] 
; 	movsxd	rbx, dword [rbp - 12]
; 	cmp		byte [rax + rbx], 0 ; check if str + i == 0
; 	je		.RETURN
; 	mov		eax, dword [rbp - 12]
; 	add		eax, 1 ; i += 1
; 	mov		dword [rbp - 12], eax
; 	jmp		.LOOP ; while
; .RETURN:
; 	mov		rax, qword [rbp - 12] ; put i in the register for ret value
; 	pop		rbp ; restore rbp 
; 	ret
