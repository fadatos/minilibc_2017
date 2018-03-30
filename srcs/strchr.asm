BITS 64

global strchr:function
section .text

strchr:
	cmp rdi, 0
	je nulle
	mov rcx, 0
	
loop:
	cmp byte [rdi + rcx], sil
	je end
	cmp byte [rdi + rcx], 0
  	je nulle
	inc rcx
	jmp loop
	
end:
	mov rax,rdi
	add rax,rcx
	ret
nulle:
	xor rax,rax
	ret