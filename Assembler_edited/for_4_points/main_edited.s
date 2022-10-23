	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"input the size of the array. The size must be 2 or larger. If size is entered wrong, please enter it again "
.LC1:
	.string	"%d"
.LC2:
	.string	"Incorrect Input! Try again! "
	.align 8
.LC3:
	.string	"Now enter array elements one by one "
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 104
	mov	DWORD PTR -100[rbp], edi
	mov	QWORD PTR -112[rbp], rsi
	mov	DWORD PTR -52[rbp], 0
	lea	rdi, .LC0[rip]
	call	puts@PLT
.L4:
	lea	rax, -92[rbp]
	mov	rsi, rax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -92[rbp]
	cmp	eax, 1
	jg	.L13
	lea	rdi, .LC2[rip]
	call	puts@PLT
	jmp	.L4
.L13:
	nop
	lea	rdi, .LC3[rip]
	call	puts@PLT
	mov	eax, DWORD PTR -92[rbp]
	mov rbx, rsp
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -64[rbp], rdx
	movsx	rdx, eax
	mov	QWORD PTR -128[rbp], rdx
	mov	QWORD PTR -120[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -144[rbp], rdx
	mov	QWORD PTR -136[rbp], 0
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rdx, rax
	and	rdx, -4096
	mov	rcx, rsp
	sub	rcx, rdx
	mov	rdx, rcx
.L5:
	cmp	rsp, rdx
	je	.L6
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L5
.L6:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L7
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L7:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -72[rbp], rax
	mov	eax, DWORD PTR -92[rbp]
	sub	eax, 1
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -80[rbp], rdx
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rdx, rax
	and	rdx, -4096
	mov	rcx, rsp
	sub	rcx, rdx
	mov	rdx, rcx
.L8:
	cmp	rsp, rdx
	je	.L9
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L8
.L9:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L10
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L10:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -88[rbp], rax
	mov	eax, DWORD PTR -92[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	edi, eax
	call	scan_array@PLT
	mov	ecx, DWORD PTR -92[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	make_array@PLT
	mov	edx, DWORD PTR -92[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	print_array@PLT
	mov	rsp, rbx
	mov	eax, 0
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	.size	main, .-main
