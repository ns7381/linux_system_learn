# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ningsheng/project/c/linux_system_learn

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ningsheng/project/c/linux_system_learn/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/linux_system_learn.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/linux_system_learn.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/linux_system_learn.dir/flags.make

CMakeFiles/linux_system_learn.dir/main.c.o: CMakeFiles/linux_system_learn.dir/flags.make
CMakeFiles/linux_system_learn.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/linux_system_learn.dir/main.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/linux_system_learn.dir/main.c.o   -c /Users/ningsheng/project/c/linux_system_learn/main.c

CMakeFiles/linux_system_learn.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linux_system_learn.dir/main.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/ningsheng/project/c/linux_system_learn/main.c > CMakeFiles/linux_system_learn.dir/main.c.i

CMakeFiles/linux_system_learn.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linux_system_learn.dir/main.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/ningsheng/project/c/linux_system_learn/main.c -o CMakeFiles/linux_system_learn.dir/main.c.s

CMakeFiles/linux_system_learn.dir/io/file_io_learn.c.o: CMakeFiles/linux_system_learn.dir/flags.make
CMakeFiles/linux_system_learn.dir/io/file_io_learn.c.o: ../io/file_io_learn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/linux_system_learn.dir/io/file_io_learn.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/linux_system_learn.dir/io/file_io_learn.c.o   -c /Users/ningsheng/project/c/linux_system_learn/io/file_io_learn.c

CMakeFiles/linux_system_learn.dir/io/file_io_learn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linux_system_learn.dir/io/file_io_learn.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/ningsheng/project/c/linux_system_learn/io/file_io_learn.c > CMakeFiles/linux_system_learn.dir/io/file_io_learn.c.i

CMakeFiles/linux_system_learn.dir/io/file_io_learn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linux_system_learn.dir/io/file_io_learn.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/ningsheng/project/c/linux_system_learn/io/file_io_learn.c -o CMakeFiles/linux_system_learn.dir/io/file_io_learn.c.s

CMakeFiles/linux_system_learn.dir/io/standard_io_learn.c.o: CMakeFiles/linux_system_learn.dir/flags.make
CMakeFiles/linux_system_learn.dir/io/standard_io_learn.c.o: ../io/standard_io_learn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/linux_system_learn.dir/io/standard_io_learn.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/linux_system_learn.dir/io/standard_io_learn.c.o   -c /Users/ningsheng/project/c/linux_system_learn/io/standard_io_learn.c

CMakeFiles/linux_system_learn.dir/io/standard_io_learn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linux_system_learn.dir/io/standard_io_learn.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/ningsheng/project/c/linux_system_learn/io/standard_io_learn.c > CMakeFiles/linux_system_learn.dir/io/standard_io_learn.c.i

CMakeFiles/linux_system_learn.dir/io/standard_io_learn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linux_system_learn.dir/io/standard_io_learn.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/ningsheng/project/c/linux_system_learn/io/standard_io_learn.c -o CMakeFiles/linux_system_learn.dir/io/standard_io_learn.c.s

CMakeFiles/linux_system_learn.dir/io/nonblocking_io_learn.c.o: CMakeFiles/linux_system_learn.dir/flags.make
CMakeFiles/linux_system_learn.dir/io/nonblocking_io_learn.c.o: ../io/nonblocking_io_learn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/linux_system_learn.dir/io/nonblocking_io_learn.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/linux_system_learn.dir/io/nonblocking_io_learn.c.o   -c /Users/ningsheng/project/c/linux_system_learn/io/nonblocking_io_learn.c

CMakeFiles/linux_system_learn.dir/io/nonblocking_io_learn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linux_system_learn.dir/io/nonblocking_io_learn.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/ningsheng/project/c/linux_system_learn/io/nonblocking_io_learn.c > CMakeFiles/linux_system_learn.dir/io/nonblocking_io_learn.c.i

CMakeFiles/linux_system_learn.dir/io/nonblocking_io_learn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linux_system_learn.dir/io/nonblocking_io_learn.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/ningsheng/project/c/linux_system_learn/io/nonblocking_io_learn.c -o CMakeFiles/linux_system_learn.dir/io/nonblocking_io_learn.c.s

CMakeFiles/linux_system_learn.dir/io/mmap_learn.c.o: CMakeFiles/linux_system_learn.dir/flags.make
CMakeFiles/linux_system_learn.dir/io/mmap_learn.c.o: ../io/mmap_learn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/linux_system_learn.dir/io/mmap_learn.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/linux_system_learn.dir/io/mmap_learn.c.o   -c /Users/ningsheng/project/c/linux_system_learn/io/mmap_learn.c

CMakeFiles/linux_system_learn.dir/io/mmap_learn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linux_system_learn.dir/io/mmap_learn.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/ningsheng/project/c/linux_system_learn/io/mmap_learn.c > CMakeFiles/linux_system_learn.dir/io/mmap_learn.c.i

CMakeFiles/linux_system_learn.dir/io/mmap_learn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linux_system_learn.dir/io/mmap_learn.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/ningsheng/project/c/linux_system_learn/io/mmap_learn.c -o CMakeFiles/linux_system_learn.dir/io/mmap_learn.c.s

CMakeFiles/linux_system_learn.dir/io/file_system_learn.c.o: CMakeFiles/linux_system_learn.dir/flags.make
CMakeFiles/linux_system_learn.dir/io/file_system_learn.c.o: ../io/file_system_learn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/linux_system_learn.dir/io/file_system_learn.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/linux_system_learn.dir/io/file_system_learn.c.o   -c /Users/ningsheng/project/c/linux_system_learn/io/file_system_learn.c

CMakeFiles/linux_system_learn.dir/io/file_system_learn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linux_system_learn.dir/io/file_system_learn.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/ningsheng/project/c/linux_system_learn/io/file_system_learn.c > CMakeFiles/linux_system_learn.dir/io/file_system_learn.c.i

CMakeFiles/linux_system_learn.dir/io/file_system_learn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linux_system_learn.dir/io/file_system_learn.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/ningsheng/project/c/linux_system_learn/io/file_system_learn.c -o CMakeFiles/linux_system_learn.dir/io/file_system_learn.c.s

CMakeFiles/linux_system_learn.dir/proc/env_learn.c.o: CMakeFiles/linux_system_learn.dir/flags.make
CMakeFiles/linux_system_learn.dir/proc/env_learn.c.o: ../proc/env_learn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/linux_system_learn.dir/proc/env_learn.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/linux_system_learn.dir/proc/env_learn.c.o   -c /Users/ningsheng/project/c/linux_system_learn/proc/env_learn.c

CMakeFiles/linux_system_learn.dir/proc/env_learn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linux_system_learn.dir/proc/env_learn.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/ningsheng/project/c/linux_system_learn/proc/env_learn.c > CMakeFiles/linux_system_learn.dir/proc/env_learn.c.i

CMakeFiles/linux_system_learn.dir/proc/env_learn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linux_system_learn.dir/proc/env_learn.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/ningsheng/project/c/linux_system_learn/proc/env_learn.c -o CMakeFiles/linux_system_learn.dir/proc/env_learn.c.s

CMakeFiles/linux_system_learn.dir/proc/fork_learn.c.o: CMakeFiles/linux_system_learn.dir/flags.make
CMakeFiles/linux_system_learn.dir/proc/fork_learn.c.o: ../proc/fork_learn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/linux_system_learn.dir/proc/fork_learn.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/linux_system_learn.dir/proc/fork_learn.c.o   -c /Users/ningsheng/project/c/linux_system_learn/proc/fork_learn.c

CMakeFiles/linux_system_learn.dir/proc/fork_learn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linux_system_learn.dir/proc/fork_learn.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/ningsheng/project/c/linux_system_learn/proc/fork_learn.c > CMakeFiles/linux_system_learn.dir/proc/fork_learn.c.i

CMakeFiles/linux_system_learn.dir/proc/fork_learn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linux_system_learn.dir/proc/fork_learn.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/ningsheng/project/c/linux_system_learn/proc/fork_learn.c -o CMakeFiles/linux_system_learn.dir/proc/fork_learn.c.s

CMakeFiles/linux_system_learn.dir/proc/pip_learn.c.o: CMakeFiles/linux_system_learn.dir/flags.make
CMakeFiles/linux_system_learn.dir/proc/pip_learn.c.o: ../proc/pip_learn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/linux_system_learn.dir/proc/pip_learn.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/linux_system_learn.dir/proc/pip_learn.c.o   -c /Users/ningsheng/project/c/linux_system_learn/proc/pip_learn.c

CMakeFiles/linux_system_learn.dir/proc/pip_learn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linux_system_learn.dir/proc/pip_learn.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/ningsheng/project/c/linux_system_learn/proc/pip_learn.c > CMakeFiles/linux_system_learn.dir/proc/pip_learn.c.i

CMakeFiles/linux_system_learn.dir/proc/pip_learn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linux_system_learn.dir/proc/pip_learn.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/ningsheng/project/c/linux_system_learn/proc/pip_learn.c -o CMakeFiles/linux_system_learn.dir/proc/pip_learn.c.s

CMakeFiles/linux_system_learn.dir/signal/signal_learn.c.o: CMakeFiles/linux_system_learn.dir/flags.make
CMakeFiles/linux_system_learn.dir/signal/signal_learn.c.o: ../signal/signal_learn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/linux_system_learn.dir/signal/signal_learn.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/linux_system_learn.dir/signal/signal_learn.c.o   -c /Users/ningsheng/project/c/linux_system_learn/signal/signal_learn.c

CMakeFiles/linux_system_learn.dir/signal/signal_learn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linux_system_learn.dir/signal/signal_learn.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/ningsheng/project/c/linux_system_learn/signal/signal_learn.c > CMakeFiles/linux_system_learn.dir/signal/signal_learn.c.i

CMakeFiles/linux_system_learn.dir/signal/signal_learn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linux_system_learn.dir/signal/signal_learn.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/ningsheng/project/c/linux_system_learn/signal/signal_learn.c -o CMakeFiles/linux_system_learn.dir/signal/signal_learn.c.s

CMakeFiles/linux_system_learn.dir/signal/mysleep_learn.c.o: CMakeFiles/linux_system_learn.dir/flags.make
CMakeFiles/linux_system_learn.dir/signal/mysleep_learn.c.o: ../signal/mysleep_learn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/linux_system_learn.dir/signal/mysleep_learn.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/linux_system_learn.dir/signal/mysleep_learn.c.o   -c /Users/ningsheng/project/c/linux_system_learn/signal/mysleep_learn.c

CMakeFiles/linux_system_learn.dir/signal/mysleep_learn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linux_system_learn.dir/signal/mysleep_learn.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/ningsheng/project/c/linux_system_learn/signal/mysleep_learn.c > CMakeFiles/linux_system_learn.dir/signal/mysleep_learn.c.i

CMakeFiles/linux_system_learn.dir/signal/mysleep_learn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linux_system_learn.dir/signal/mysleep_learn.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/ningsheng/project/c/linux_system_learn/signal/mysleep_learn.c -o CMakeFiles/linux_system_learn.dir/signal/mysleep_learn.c.s

CMakeFiles/linux_system_learn.dir/terminal/daemon_learn.c.o: CMakeFiles/linux_system_learn.dir/flags.make
CMakeFiles/linux_system_learn.dir/terminal/daemon_learn.c.o: ../terminal/daemon_learn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/linux_system_learn.dir/terminal/daemon_learn.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/linux_system_learn.dir/terminal/daemon_learn.c.o   -c /Users/ningsheng/project/c/linux_system_learn/terminal/daemon_learn.c

CMakeFiles/linux_system_learn.dir/terminal/daemon_learn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linux_system_learn.dir/terminal/daemon_learn.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/ningsheng/project/c/linux_system_learn/terminal/daemon_learn.c > CMakeFiles/linux_system_learn.dir/terminal/daemon_learn.c.i

CMakeFiles/linux_system_learn.dir/terminal/daemon_learn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linux_system_learn.dir/terminal/daemon_learn.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/ningsheng/project/c/linux_system_learn/terminal/daemon_learn.c -o CMakeFiles/linux_system_learn.dir/terminal/daemon_learn.c.s

CMakeFiles/linux_system_learn.dir/thread/thread_learn.c.o: CMakeFiles/linux_system_learn.dir/flags.make
CMakeFiles/linux_system_learn.dir/thread/thread_learn.c.o: ../thread/thread_learn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/linux_system_learn.dir/thread/thread_learn.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/linux_system_learn.dir/thread/thread_learn.c.o   -c /Users/ningsheng/project/c/linux_system_learn/thread/thread_learn.c

CMakeFiles/linux_system_learn.dir/thread/thread_learn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linux_system_learn.dir/thread/thread_learn.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/ningsheng/project/c/linux_system_learn/thread/thread_learn.c > CMakeFiles/linux_system_learn.dir/thread/thread_learn.c.i

CMakeFiles/linux_system_learn.dir/thread/thread_learn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linux_system_learn.dir/thread/thread_learn.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/ningsheng/project/c/linux_system_learn/thread/thread_learn.c -o CMakeFiles/linux_system_learn.dir/thread/thread_learn.c.s

CMakeFiles/linux_system_learn.dir/driver/hello.c.o: CMakeFiles/linux_system_learn.dir/flags.make
CMakeFiles/linux_system_learn.dir/driver/hello.c.o: ../driver/hello.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/linux_system_learn.dir/driver/hello.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/linux_system_learn.dir/driver/hello.c.o   -c /Users/ningsheng/project/c/linux_system_learn/driver/hello.c

CMakeFiles/linux_system_learn.dir/driver/hello.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linux_system_learn.dir/driver/hello.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/ningsheng/project/c/linux_system_learn/driver/hello.c > CMakeFiles/linux_system_learn.dir/driver/hello.c.i

CMakeFiles/linux_system_learn.dir/driver/hello.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linux_system_learn.dir/driver/hello.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/ningsheng/project/c/linux_system_learn/driver/hello.c -o CMakeFiles/linux_system_learn.dir/driver/hello.c.s

# Object files for target linux_system_learn
linux_system_learn_OBJECTS = \
"CMakeFiles/linux_system_learn.dir/main.c.o" \
"CMakeFiles/linux_system_learn.dir/io/file_io_learn.c.o" \
"CMakeFiles/linux_system_learn.dir/io/standard_io_learn.c.o" \
"CMakeFiles/linux_system_learn.dir/io/nonblocking_io_learn.c.o" \
"CMakeFiles/linux_system_learn.dir/io/mmap_learn.c.o" \
"CMakeFiles/linux_system_learn.dir/io/file_system_learn.c.o" \
"CMakeFiles/linux_system_learn.dir/proc/env_learn.c.o" \
"CMakeFiles/linux_system_learn.dir/proc/fork_learn.c.o" \
"CMakeFiles/linux_system_learn.dir/proc/pip_learn.c.o" \
"CMakeFiles/linux_system_learn.dir/signal/signal_learn.c.o" \
"CMakeFiles/linux_system_learn.dir/signal/mysleep_learn.c.o" \
"CMakeFiles/linux_system_learn.dir/terminal/daemon_learn.c.o" \
"CMakeFiles/linux_system_learn.dir/thread/thread_learn.c.o" \
"CMakeFiles/linux_system_learn.dir/driver/hello.c.o"

# External object files for target linux_system_learn
linux_system_learn_EXTERNAL_OBJECTS =

linux_system_learn: CMakeFiles/linux_system_learn.dir/main.c.o
linux_system_learn: CMakeFiles/linux_system_learn.dir/io/file_io_learn.c.o
linux_system_learn: CMakeFiles/linux_system_learn.dir/io/standard_io_learn.c.o
linux_system_learn: CMakeFiles/linux_system_learn.dir/io/nonblocking_io_learn.c.o
linux_system_learn: CMakeFiles/linux_system_learn.dir/io/mmap_learn.c.o
linux_system_learn: CMakeFiles/linux_system_learn.dir/io/file_system_learn.c.o
linux_system_learn: CMakeFiles/linux_system_learn.dir/proc/env_learn.c.o
linux_system_learn: CMakeFiles/linux_system_learn.dir/proc/fork_learn.c.o
linux_system_learn: CMakeFiles/linux_system_learn.dir/proc/pip_learn.c.o
linux_system_learn: CMakeFiles/linux_system_learn.dir/signal/signal_learn.c.o
linux_system_learn: CMakeFiles/linux_system_learn.dir/signal/mysleep_learn.c.o
linux_system_learn: CMakeFiles/linux_system_learn.dir/terminal/daemon_learn.c.o
linux_system_learn: CMakeFiles/linux_system_learn.dir/thread/thread_learn.c.o
linux_system_learn: CMakeFiles/linux_system_learn.dir/driver/hello.c.o
linux_system_learn: CMakeFiles/linux_system_learn.dir/build.make
linux_system_learn: CMakeFiles/linux_system_learn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking C executable linux_system_learn"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/linux_system_learn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/linux_system_learn.dir/build: linux_system_learn

.PHONY : CMakeFiles/linux_system_learn.dir/build

CMakeFiles/linux_system_learn.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/linux_system_learn.dir/cmake_clean.cmake
.PHONY : CMakeFiles/linux_system_learn.dir/clean

CMakeFiles/linux_system_learn.dir/depend:
	cd /Users/ningsheng/project/c/linux_system_learn/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ningsheng/project/c/linux_system_learn /Users/ningsheng/project/c/linux_system_learn /Users/ningsheng/project/c/linux_system_learn/cmake-build-debug /Users/ningsheng/project/c/linux_system_learn/cmake-build-debug /Users/ningsheng/project/c/linux_system_learn/cmake-build-debug/CMakeFiles/linux_system_learn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/linux_system_learn.dir/depend

