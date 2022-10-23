	.file	"scan_array.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	scan_array
	.type	scan_array, @function
scan_array:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi # -20 = size передает входной параметр функции edi
	mov	QWORD PTR -32[rbp], rsi # -32 = const int *A передает входной параметр функции rsi
	mov	r12d, 0 # заменен DWORD PTR -4[rbp] на регистр r12d
	jmp	.L2
.L3:
	mov	eax, r12d # заменен DWORD PTR -4[rbp] на регистр r12d
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	r12d, 1 # заменен DWORD PTR -4[rbp] на регистр r12d
.L2:
	mov	eax, r12d # заменен DWORD PTR -4[rbp] на регистр r12d
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L3
	nop
	nop
	leave
	ret
	.size	scan_array, .-scan_array
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4: