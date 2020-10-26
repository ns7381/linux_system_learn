#include "stdio.h"
#include "standard_io_learn.h"

/**
 * ANSI  C IO操作称为标准文件IO，也称为高级文件IO，是C库函数提供的，属于带有缓冲区的文件操作方式。
 * 执行该种操作后，内容首先会将内容写入到用户空间的缓冲区中，待缓冲区满或者需要刷新的时候再去调用文件IO，将内容写入到内核的磁盘缓冲区当中。
 */
int printf_learn() {
    char buf[] = "hello linux";
    printf("%s", buf);
    while (1);
}
int _learn() {
    char buf[] = "hello linux\n";
    printf("%s", buf);
    while (1);
}