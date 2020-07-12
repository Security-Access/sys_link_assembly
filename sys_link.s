BITS 64

global _start

section .rodata
	oldfile db "file1", 0
	newfile db "file2", 0
section .text

_start:
	mov rax, 0x56
	mov rdi, oldfile
	mov rsi, newfile
	syscall
	jmp _exit

_exit:
	mov rax, 0x3C
	mov rdi, 0
	syscall
