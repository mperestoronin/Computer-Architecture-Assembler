	.file	"print_array.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"\n Array B is: "
.LC1:
	.string	"%d "
	.text
	.globl	print_array
	.type	print_array, @function
print_array:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi # -24 = const int *B передает входной параметр функции rdi
	mov	DWORD PTR -28[rbp], esi # -28 = size передает входной параметр функции esi
	lea	rdi, .LC0[rip]
	mov	eax, 0 # кладем 0 в eax перед вызовом функции
	call	printf@PLT # вызов printf
	mov	DWORD PTR -4[rbp], 0 # -4 = i (хоть и это не входной параметр)
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov esi, DWORD PTR [rax]
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	edi, 10
	call	putchar@PLT
	nop
	leave
	ret
	.size	print_array, .-print_array
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
