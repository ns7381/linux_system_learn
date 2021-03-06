#include "stdio.h"
#include "unistd.h"
#include "io/file_io_learn.h"
#include "io/standard_io_learn.h"
#include "io/nonblocking_io_learn.h"
#include "proc/env_learn.h"
#include "proc/fork_learn.h"

int main() {
    char *argv = "/Users/ningsheng/project/c/linux_system_learn/test2";
//    write_file (argv);
//    seek_file(argv);

//    printf_learn();
//    fopen_file(argv);
//    file_io_learn_main();
//    nonblock_io_learn();
//    env_learn_main();

    fork_learn_main();
}

/**
 * 执行系统调用int 80
 * @param argc 
 * @param argv 
 */
void assembly(int argc, char *argv[]) {
    unsigned int syscall_nr = 1;
    int exit_status = 42;

    asm ("movl %0, %%eax\n"
         "movl %1, %%ebx\n"
         "int $0x80"
    : /* output parameters, we aren't outputting anything, no none */
    /* (none) */
    : /* input parameters mapped to %0 and %1, repsectively */
    "m" (syscall_nr), "m" (exit_status)
    : /* registers that we are "clobbering", unneeded since we are calling exit */
    "eax", "ebx");
}