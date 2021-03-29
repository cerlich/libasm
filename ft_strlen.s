global ft_strlen

section .text
;size_t ft_strlen(const char *str);
ft_strlen:
	xor rax, rax
.loop:	cmp [rdi + rax], byte 0
	je .return
	inc rax
	jmp .loop
.return:
	ret