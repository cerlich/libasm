
global ft_strdup

section .text
extern malloc
extern ft_strlen
extern ft_strcpy
ft_strdup:
	xor rax, rax
	xor rsi, rsi
	call ft_strlen
	cmp rax, 0
	jl .error
	inc rax
	push rdi
	mov rdi, rax
	call malloc wrt ..plt
	pop rdi
	mov rsi, rdi ; src 
	mov rdi, rax ; dst
	call ft_strcpy
	ret
.error:
	xor rax, rax
	ret

