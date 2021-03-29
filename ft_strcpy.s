global	ft_strcpy

section .text
;char *strcpy(char *dst, const char *src);
; rdi = dst
; rsi = src
ft_strcpy:
	xor rax, rax
	xor rcx, rcx
.loop:	cmp  [rsi + rcx], byte 0
	je .return
	mov al, [rsi + rcx]
	mov [rdi + rcx], al
	inc rcx
	mov al, 0
	jmp .loop
.return:
	xor rax, rax
	mov rax, rdi
	ret