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
        