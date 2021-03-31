global ft_read
extern ___error
section .text
;ssize_t read(int fd, void *buf, size_t count)
;fd = rdi
;buf = rsi
;count = rdx
ft_read:
	xor rax, rax
	mov rax, 0
	syscall
	jc .error
	ret
.error:
	push rax
	call ___error
	pop r10; не шарю какой регистр, но пусть будет r10
	mov [rax], r10
	mov rax, -1
	ret