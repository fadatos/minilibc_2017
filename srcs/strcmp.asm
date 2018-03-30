BITS 64

global strcmp:function
section .text

strcmp:
    mov r10b, byte [rdi]
    mov r9b, byte [rsi]
    cmp r10b, 0
    je end
    cmp r9b, 0
    je end
    cmp r10b, r9b
    jne end
    inc rsi
    inc rdi
    jmp strcmp

end:
    movzx rbx, r9b
    movzx rax, r10b
    sub rax, rbx
    ret
