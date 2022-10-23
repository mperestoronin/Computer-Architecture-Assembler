# Computer-Architecture-Assembler-HW1
<br>Homework for Computer Architecture class
<br>Сделал Пересторонин Максим Дмитриевич БПИ 217
## На 4 балла:
* [Приведено решение задачи на C.](https://github.com/mperestoronin/Computer-Architecture-Assembler/tree/main/CFiles)
* [В полученную ассемблерную программу, откомпилированную без оптимизирующих и отладочных опций, добавлены комментарии, поясняющие эквивалентное представление переменных в программе на C.](https://github.com/mperestoronin/Computer-Architecture-Assembler/tree/main/Assembler_Original)
* [Из ассемблерной программы убраны лишние макросы за счет использования соответствующих аргументов командной строки и/или за счет ручного редактирования исходного текста ассемблерной программы. Модифицированная ассемблерная программа отдельно откомпилирована
и скомпонована без использования опций отладки.](https://github.com/mperestoronin/Computer-Architecture-Assembler/tree/main/Assembler_edited)
* [Представлено полное тестовое покрытие, дающее одинаковый результат
на обоих программах. Приведены результаты тестовых прогонов для обоих программ, демонстрирующие эквивалентность функционирования.](https://github.com/mperestoronin/Computer-Architecture-Assembler/blob/main/Tests.md)
* Сформировать отчет, описывающий результаты тестовых прогонов и используемых опций компиляции и/или описания проведенных модификаций. [Заключение по тестам тут](https://github.com/mperestoronin/Computer-Architecture-Assembler/blob/main/Tests.md#%D0%B7%D0%B0%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B5) (смотрите чуть ниже) - [список изменений тут](https://github.com/mperestoronin/Computer-Architecture-Assembler/blob/main/Assembler_edited/for_4_points/Edit_log.md)
## На 5 баллов:
* [Я использовал локальные переменные и передавал данные в функции через параметры](https://github.com/mperestoronin/Computer-Architecture-Assembler/tree/main/CFiles)
* [В ассемблерную программу при вызове функции добавить комментарии, описывающие передачу фактических параметров и перенос возвращаемого результата.](https://github.com/mperestoronin/Computer-Architecture-Assembler/blob/main/Assembler_edited/for_5_points/main_edited_comments.s)
* Между параметрами языка Си и регистрами assembly была установлена следующая связь:
  * rdi, edi - первый аргумент в функцию
  * rsi, esi - второй аргумент в функцию
  * rdx, edx - третий аргумент в функцию
  * EAX, ECX, EDX, EDI и ESI - это регистры общего назначения, в которых можно хранить почти любую информацию.
