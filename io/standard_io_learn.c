#include <stdlib.h>
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
int stderr_learn()
{
    FILE *fp;
    if ( (fp = fopen("/tmp/file1", "r")) == NULL) {
        fputs("Error open file /tmp/file1\n", stderr);
        exit(1);
    }
}
int line_cache_learn() {
    char buf[] = "hello linux\n";
    printf("%s", buf);
    while (1);
}

int fopen_file(char argv[])
{
    FILE *fp;
    fp=fopen(argv, "w+");
    if (fp == NULL)
    {
        printf("create file %s failure\n", argv);
        return -1;
    }
    printf("create file %s success \n", argv);
    fclose(fp);
    return 0;
}

int fput_fget_learn()
{
    FILE *fp;
    int ch;

    if ( (fp = fopen("file2", "w+")) == NULL) {
        perror("Open file file2\n");
        exit(1);
    }
    while ( (ch = getchar()) != EOF)
        fputc(ch, fp);
    rewind(fp);
    while ( (ch = fgetc(fp)) != EOF)
        putchar(ch);
    fclose(fp);
    return 0;
}
int fseek_learn()
{
    FILE* fp;
    if ( (fp = fopen("/Users/ningsheng/project/c/linux_system_learn/textfile","w+")) == NULL) {
        perror("Open file textfile");
        exit(1);
    }
    if (fseek(fp, 10, SEEK_SET) != 0) {
        perror("Seek file textfile");
        exit(1);
    }
    fputc('K', fp);
    fclose(fp);
    return 0;
}
struct record {
    char name[10];
    int age;
};
int fwrite_learn()
{
    struct record array[2] = {{"Ken", 24}, {"Knuth", 28}};
    FILE *fp = fopen("/Users/ningsheng/project/c/linux_system_learn/recfile", "w");
    if (fp == NULL) {
        perror("Open file recfile");
        exit(1);
    }
    fwrite(array, sizeof(struct record), 2, fp);
    fclose(fp);
    return 0;
}
int fread_learn(void)
{
    struct record array[2];
    FILE *fp = fopen("/Users/ningsheng/project/c/linux_system_learn/recfile", "r");
    if (fp == NULL) {
        perror("Open file recfile");
        exit(1);
    }
    fread(array, sizeof(struct record), 2, fp);
    printf("Name1: %s\tAge1: %d\n", array[0].name, array[0].age);
    printf("Name2: %s\tAge2: %d\n", array[1].name, array[1].age);
    fclose(fp);
    return 0;
}
int standard_io_learn_main()
{
//    printf_learn();
//    line_cache_learn();
//    stderr_learn();
//    fput_fget_learn();
//    fseek_learn();
//    fwrite_learn();
    fread_learn();
}