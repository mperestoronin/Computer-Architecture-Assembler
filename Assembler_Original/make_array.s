	.file	"make_array.c"
	.intel_syntax noprefix
	.text
	.globl	make_array
	.type	make_array, @function
make_array:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	# аргументы, передаваемые в функцию
	mov	QWORD PTR -24[rbp], rdi #const int *A
	mov	DWORD PTR -28[rbp], esi #int length
	mov	QWORD PTR -40[rbp], rdx #int *B
	mov	DWORD PTR -4[rbp], 0 #int i = 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rsi, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rsi
	sub	ecx, edx
	mov	edx, ecx
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -4[rbp], 1 # к i добавляем 1 (в цикле)
.L2:
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	cmp	DWORD PTR -4[rbp], eax #i < length - 1
	jl	.L3
	nop
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
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