	.file	"make_array.c"
	.intel_syntax noprefix
	.text
	.globl	make_array
	.type	make_array, @function
make_array:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi # -24 = const int *A передает входной параметр функции rdi
	mov	r13d, esi # Заменил  DWORD PTR -28[rbp] на r13d
	mov	QWORD PTR -40[rbp], rdx # -40 = const int *B передает входной параметр функции rdx
	mov	r12d, 0    # Заменил  DWORD PTR -4[rbp] на r12d
	jmp	.L2
.L3:
	mov	eax, r12d # Заменил  DWORD PTR -4[rbp] на r12d
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	eax, r12d # Заменил  DWORD PTR -4[rbp] на r12d
	add	rax, 1
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, r12d # Заменил  DWORD PTR -4[rbp] на r12d
	lea	rsi, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rsi
	sub	ecx, edx
	mov	edx, ecx
	mov	DWORD PTR [rax], edx
	add	r12d, 1 # Заменил  DWORD PTR -4[rbp] на r12d
.L2:
	mov	eax, r13d # Заменил  DWORD PTR -28[rbp] на r13d
	sub	eax, 1
	cmp	r12d, eax # Заменил  DWORD PTR -4[rbp] на r12d
	jl	.L3
	nop
	nop
	pop	rbp
	ret
	.size	make_array, .-make_array
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