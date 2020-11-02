#include "stdlib.h"
#include "stdio.h"
#include "unistd.h"
#include "fcntl.h"

/**
 * POSIX IO操作称为文件IO，也称为低级文件IO，是操作系统提供的系统调用，属于没有缓冲区的文件操作方式。
 * 执行该种操作后，内容会直接被写入到内核中的提供给磁盘的专门缓冲区中，内核会定期的刷新该缓冲区，将内容同步到磁盘当中。
 * @param argv
 * @return
 */
int open_file(char argv[])
{
    int fd;
    fd=open(argv, O_CREAT | O_RDWR, 0777);
    if (fd<0)
    {
        printf("create file %s failure\n", argv);
        return -1;
    }
    printf("create file %s success, fd=%d \n", argv, fd);
    close(fd);
    return 0;
}

int write_file(char argv[])
{
    int fd;
    fd=open(argv, O_RDWR | O_TRUNC);
    if (fd<0)
    {
        printf("open file %s failure\n", argv);
        return -1;
    }
    printf("open file %s success, fd=%d \n", argv, fd);
    char buf[] = "hello linux";
    int wr_ret = write(fd, buf, sizeof(buf));
    printf("wr_ret=%d\n", wr_ret);
    close(fd);
    return 0;
}

int read_file(char argv[])
{
    int fd;
    fd=open(argv, O_RDWR);
    if (fd<0)
    {
        printf("open file %s failure\n", argv);
        return -1;
    }
    printf("open file %s success, fd=%d \n", argv, fd);
    char buf[128]={0};
    int read_ret = read(fd, buf, 128);
    printf("read_ret=%d\n", read_ret);
    printf("read file:%s\n", buf);
    close(fd);
    return 0;
}

int seek_file(char argv[])
{
    int fd;
    fd=open(argv, O_RDWR);
    if (fd<0)
    {
        printf("open file %s failure\n", argv);
        return -1;
    }
    printf("open file %s success, fd=%d \n", argv, fd);
    char buf[128]={0};
    lseek(fd, 3, SEEK_SET);
    int read_ret = read(fd, buf, 128);
    printf("read_ret=%d\n", read_ret);
    printf("read file:%s\n", buf);
    close(fd);
    return 0;
}

int read_write()
{
    char buf[10];
    int n;
    n = read(STDIN_FILENO, buf, 10);
    if (n < 0) {
        perror("read STDIN_FILENO");
        exit(1);
    }
    write(STDOUT_FILENO, buf, n);
    return 0;
}

int file_io_learn_main()
{
    read_write();
}
