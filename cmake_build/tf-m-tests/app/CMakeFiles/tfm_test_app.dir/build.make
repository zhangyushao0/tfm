# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zhangyushao/tfm_2/trusted-firmware-m

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build

# Include any dependencies generated for this target.
include tf-m-tests/app/CMakeFiles/tfm_test_app.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tf-m-tests/app/CMakeFiles/tfm_test_app.dir/compiler_depend.make

# Include the progress variables for this target.
include tf-m-tests/app/CMakeFiles/tfm_test_app.dir/progress.make

# Include the compile flags for this target's objects.
include tf-m-tests/app/CMakeFiles/tfm_test_app.dir/flags.make

tf-m-tests/app/CMakeFiles/tfm_test_app.dir/test_app.o: tf-m-tests/app/CMakeFiles/tfm_test_app.dir/flags.make
tf-m-tests/app/CMakeFiles/tfm_test_app.dir/test_app.o: lib/ext/tfm_test_repo-src/app/test_app.c
tf-m-tests/app/CMakeFiles/tfm_test_app.dir/test_app.o: tf-m-tests/app/CMakeFiles/tfm_test_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tf-m-tests/app/CMakeFiles/tfm_test_app.dir/test_app.o"
	cd /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/app && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tf-m-tests/app/CMakeFiles/tfm_test_app.dir/test_app.o -MF CMakeFiles/tfm_test_app.dir/test_app.o.d -o CMakeFiles/tfm_test_app.dir/test_app.o -c /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/lib/ext/tfm_test_repo-src/app/test_app.c

tf-m-tests/app/CMakeFiles/tfm_test_app.dir/test_app.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tfm_test_app.dir/test_app.i"
	cd /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/app && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/lib/ext/tfm_test_repo-src/app/test_app.c > CMakeFiles/tfm_test_app.dir/test_app.i

tf-m-tests/app/CMakeFiles/tfm_test_app.dir/test_app.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tfm_test_app.dir/test_app.s"
	cd /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/app && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/lib/ext/tfm_test_repo-src/app/test_app.c -o CMakeFiles/tfm_test_app.dir/test_app.s

tf-m-tests/app/CMakeFiles/tfm_test_app.dir/__/log/tfm_log_raw.o: tf-m-tests/app/CMakeFiles/tfm_test_app.dir/flags.make
tf-m-tests/app/CMakeFiles/tfm_test_app.dir/__/log/tfm_log_raw.o: lib/ext/tfm_test_repo-src/log/tfm_log_raw.c
tf-m-tests/app/CMakeFiles/tfm_test_app.dir/__/log/tfm_log_raw.o: tf-m-tests/app/CMakeFiles/tfm_test_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tf-m-tests/app/CMakeFiles/tfm_test_app.dir/__/log/tfm_log_raw.o"
	cd /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/app && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tf-m-tests/app/CMakeFiles/tfm_test_app.dir/__/log/tfm_log_raw.o -MF CMakeFiles/tfm_test_app.dir/__/log/tfm_log_raw.o.d -o CMakeFiles/tfm_test_app.dir/__/log/tfm_log_raw.o -c /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/lib/ext/tfm_test_repo-src/log/tfm_log_raw.c

tf-m-tests/app/CMakeFiles/tfm_test_app.dir/__/log/tfm_log_raw.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tfm_test_app.dir/__/log/tfm_log_raw.i"
	cd /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/app && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/lib/ext/tfm_test_repo-src/log/tfm_log_raw.c > CMakeFiles/tfm_test_app.dir/__/log/tfm_log_raw.i

tf-m-tests/app/CMakeFiles/tfm_test_app.dir/__/log/tfm_log_raw.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tfm_test_app.dir/__/log/tfm_log_raw.s"
	cd /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/app && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/lib/ext/tfm_test_repo-src/log/tfm_log_raw.c -o CMakeFiles/tfm_test_app.dir/__/log/tfm_log_raw.s

# Object files for target tfm_test_app
tfm_test_app_OBJECTS = \
"CMakeFiles/tfm_test_app.dir/test_app.o" \
"CMakeFiles/tfm_test_app.dir/__/log/tfm_log_raw.o"

# External object files for target tfm_test_app
tfm_test_app_EXTERNAL_OBJECTS =

tf-m-tests/app/libtfm_test_app.a: tf-m-tests/app/CMakeFiles/tfm_test_app.dir/test_app.o
tf-m-tests/app/libtfm_test_app.a: tf-m-tests/app/CMakeFiles/tfm_test_app.dir/__/log/tfm_log_raw.o
tf-m-tests/app/libtfm_test_app.a: tf-m-tests/app/CMakeFiles/tfm_test_app.dir/build.make
tf-m-tests/app/libtfm_test_app.a: tf-m-tests/app/CMakeFiles/tfm_test_app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libtfm_test_app.a"
	cd /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/app && $(CMAKE_COMMAND) -P CMakeFiles/tfm_test_app.dir/cmake_clean_target.cmake
	cd /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tfm_test_app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tf-m-tests/app/CMakeFiles/tfm_test_app.dir/build: tf-m-tests/app/libtfm_test_app.a
.PHONY : tf-m-tests/app/CMakeFiles/tfm_test_app.dir/build

tf-m-tests/app/CMakeFiles/tfm_test_app.dir/clean:
	cd /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/app && $(CMAKE_COMMAND) -P CMakeFiles/tfm_test_app.dir/cmake_clean.cmake
.PHONY : tf-m-tests/app/CMakeFiles/tfm_test_app.dir/clean

tf-m-tests/app/CMakeFiles/tfm_test_app.dir/depend:
	cd /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangyushao/tfm_2/trusted-firmware-m /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/lib/ext/tfm_test_repo-src/app /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/app /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/app/CMakeFiles/tfm_test_app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tf-m-tests/app/CMakeFiles/tfm_test_app.dir/depend

