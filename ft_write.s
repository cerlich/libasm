global ft_write
extern ___error
section .text
;ssize_t write(int fd, const void *buf, size_t count)
;fd = rdi
;buf = rsi
;count = rdx
ft_write:
	xor rax, rax
	mov rax, 1
	syscall
	jc .error
	ret
.error:
	