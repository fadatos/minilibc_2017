BITS 64

global memcpy:function
section .text

memcpy:
	mov rcx, 0
	mov r9, 0
	
loop:
	cmp r9, rdx
	je end
	mov al, [rsi+r9]
	mov [rdi+rcx], al
	inc r9
	inc rcx
	jmp loop

end:
	mov rax, rdi
	ret