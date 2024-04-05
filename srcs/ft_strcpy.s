; arch	  syscall	return	arg0	arg1	arg2	arg3	arg4	arg5
;-----------------------------------------------------------------------
; x86_64	rax		rax	 	 rdi	rsi		rdx		r10		r8		r9

global _ft_strcpy

_ft_strcpy: ; char *_ft_strcpy(char *dest, const char *src)
	xor		rcx, rcx
	cmp		rdi, 0 ; check if dest is not NULL
	jz		.RETURN
.LOOP:
	cmp		byte [rsi + rcx], 0
	jz		.NULLBYTE ; label to get terminate the str with a '\0'
	mov		dl, [rsi + rcx] ; cpy src[i] in dl register (8 bits/1 byte/1 char)
	mov		[rdi + rcx], dl ; cpy src[i] to dest[i]
	inc rcx
	jmp .LOOP
.NULLBYTE:
	mov	byte [rdi + rcx], 0
.RETURN:
	mov rax, rdi
	ret
