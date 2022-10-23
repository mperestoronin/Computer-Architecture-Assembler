# Список изменений
Все файлы были откомпилированны с флагами:
gcc -masm=intel \
    -fno-asynchronous-unwind-tables \
    -fno-jump-tables \
    -fno-stock-protector \
    -fno-exception \
    ./<тут имя файла>.c \
    -S -o ./<тут имя файла>.s 
### main
Удалены ненужные cdqe
Убрано лишнее присваивание:
  #mov	rdx, rsp
	#mov	rbx, rdx
 Заменил просто на
	mov rbx, rsp
	Убрал ненужный сгенерированный gcc код:
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
