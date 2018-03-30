BITS 64

global strlen:function
section .text

strlen:
	xor rax, rax

loop:
	cmp [rdi], byte 0
	jz end
	inc rax
	inc rdi
	jmp loop

end:
	ret