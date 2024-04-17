global _ft_write
extern ___error

_ft_write: ; size_t ft_write(int fd, const void *buf, size_t count);
	mov		rax, 0x2000004 ; syscall write
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
