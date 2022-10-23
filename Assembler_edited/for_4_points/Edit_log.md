# Список изменений
Все файлы были откомпилированны с флагами:
<br>gcc -masm=intel \
<br>    -fno-asynchronous-unwind-tables \
<br>    -fno-jump-tables \
<br>    -fno-stock-protector \
<br>    -fno-exception \
<br>    ./<тут имя файла>.c \
<br>    -S -o ./<тут имя файла>.s 
### main
<br>Удалены ненужные cdqe
<br>Убрано лишнее присваивание:
<br>  mov	rdx, rsp
<br>	mov	rbx, rdx
<br> Заменил просто на
<br>	mov rbx, rsp
<br>	Убрал ненужный сгенерированный gcc код:
<br>	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
<br>	.section	.note.GNU-stack,"",@progbits
<br>	.section	.note.gnu.property,"a"
<br>	.align 8
<br>	.long	 1f - 0f
<br>	.long	 4f - 1f
<br>	.long	 5
<br>0:
<br>	.string	 "GNU"
<br>1:
<br>	.align 8
<br>	.long	 0xc0000002
<br>	.long	 3f - 2f
<br>2:
<br>	.long	 0x3
<br>3:
<br>	.align 8
<br>4:
### print_array
<br>Удалены ненужные cdqe
<br>Убрано ненужное присваивание
<br>mov	eax, DWORD PTR [rax] 
<br>mov	esi, eax
<br>Исправлено на
<br>mov esi, DWORD PTR [rax]
### make_array
<br>Удалены ненужные cdqe
### scan_array
<br>Удалены ненужные cdqe
