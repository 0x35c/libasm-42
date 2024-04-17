global _ft_read
extern ___error

_ft_read: ; size_t ft_read(int fd, const void *buf, size_t count);
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
