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
	.string	"Now enter array elements one by one " #кладем в секцию rodata строку
	.text                                          #в этой секции будет распологаться непосредственно код
	.globl	main                                    # объявляем глобально видимую (остальные объекты смогут ее вызвать) функцию main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc                                  #используется в начале каждой функции (a cfi_endproc- в конце)
	endbr64                                         # End Branch 64 bit
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 104
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	#аргументы командной строки
	mov	DWORD PTR -100[rbp], edi # int argc
	mov	QWORD PTR -112[rbp], rsi # char *argv[]
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -92[rbp], 0 # int bool = 0
	lea	rdi, .LC0[rip]
	call	puts@PLT
.L4:
	lea	rax, -96[rbp] # int size
	mov	rsi, rax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -96[rbp]
	cmp	eax, 1
	jg	.L14
	lea	rdi, .LC2[rip]
	call	puts@PLT
	jmp	.L4
.L14:
	nop
	lea	rdi, .LC3[rip]
	call	puts@PLT
	mov	eax, DWORD PTR -96[rbp] # Начало int A[size]
	mov	rdx, rsp
	mov	rbx, rdx
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -88[rbp], rdx
	movsx	rdx, eax
	mov	QWORD PTR -128[rbp], rdx
	mov	QWORD PTR -120[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -144[rbp], rdx
	mov	QWORD PTR -136[rbp], 0
	cdqe
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
	mov	QWORD PTR -80[rbp], rax # конец int A[size]
	mov	eax, DWORD PTR -96[rbp] # начало int B[size - 1]
	sub	eax, 1
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -72[rbp], rdx
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	cdqe
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
	mov	QWORD PTR -64[rbp], rax # конец int B[size - 1]
	# передача аргументов в функции
	mov	eax, DWORD PTR -96[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	rsi, rdx
	mov	edi, eax
	call	scan_array@PLT
	mov	ecx, DWORD PTR -96[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	make_array@PLT
	mov	edx, DWORD PTR -96[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	print_array@PLT
	mov	rsp, rbx
	mov	eax, 0
	# Конец передачи аргументов в функции.
	mov	rbx, QWORD PTR -56[rbp]
	xor	rbx, QWORD PTR fs:40
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
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