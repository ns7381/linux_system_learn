cmake_minimum_required(VERSION 3.17)
project(linux_system_learn C)

set(CMAKE_C_STANDARD 99)

add_executable(linux_system_learn main.c io/file_io_learn.c io/file_io_learn.h io/standard_io_learn.c io/standard_io_learn.h)