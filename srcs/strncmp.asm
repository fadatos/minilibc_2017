BITS 64

global strncmp:function
section .text

strncmp:
	xor rcx, rcx

loop:
	mov r10b, byte [rdi]
	mov r9b, byte [rsi]
	cmp r10b, 0
	je end
	cmp r9b, 0
	je end
	cmp r10b, r9b
	jne end
	inc rdi
	inc rsi
	inc rcx
	cmp rdx, rcx
	jle end
	jmp loop

end:
	movzx rax, r10b
	movzx rbx, r9b
	sub rax, rbx
	ret
