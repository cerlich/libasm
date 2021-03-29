global ft_strcmp

section .text

ft_strcmp:
	xor rax, rax
	xor rcx, rcx
.loop:	cmp [rdi + rcx], byte 0
	je .ret_less
	cmp [rsi + rcx], byte 0
	je .ret_grater
	mov al, [rdi + rcx]
	cmp al, [rsi + rcx]
	jl .ret_less
	jg .ret_grater
	inc rcx
	jmp .loop
.ret_grater:
	mov al,  [rdi + rcx]
	sub al, [rsi + rcx]
	ret
.ret_less:
	mov al, [rsi + rcx]
	sub al, [rdi + rcx]
	mov rcx, -1
	mul rcx
	ret