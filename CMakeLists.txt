cmake_minimum_required(VERSION 3.17)
project(linux_system_learn C)

set(CMAKE_C_STANDARD 99)

add_executable(linux_system_learn main.c io/file_io_learn.c io/file_io_learn.h io/standard_io_learn.c io/standard_io_learn.h io/nonblocking_io_learn.c io/nonblocking_io_learn.h io/mmap_learn.c io/mmap_learn.h io/file_system_learn.c io/file_system_learn.h proc/env_learn.c proc/env_learn.h proc/fork_learn.c proc/fork_learn.h proc/pip_learn.c proc/pip_learn.h)