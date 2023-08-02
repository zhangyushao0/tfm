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

# Utility rule file for tfm_ns_hex.

# Include any custom commands dependencies for this target.
include tf-m-tests/app/CMakeFiles/tfm_ns_hex.dir/compiler_depend.make

# Include the progress variables for this target.
include tf-m-tests/app/CMakeFiles/tfm_ns_hex.dir/progress.make

bin/tfm_ns.hex: bin/tfm_ns.axf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../../bin/tfm_ns.hex"
	cd /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/app && /usr/bin/arm-none-eabi-objcopy -O ihex /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/bin/tfm_ns.axf /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/bin/tfm_ns.hex

tfm_ns_hex: bin/tfm_ns.hex
tfm_ns_hex: tf-m-tests/app/CMakeFiles/tfm_ns_hex.dir/build.make
.PHONY : tfm_ns_hex

# Rule to build all files generated by this target.
tf-m-tests/app/CMakeFiles/tfm_ns_hex.dir/build: tfm_ns_hex
.PHONY : tf-m-tests/app/CMakeFiles/tfm_ns_hex.dir/build

tf-m-tests/app/CMakeFiles/tfm_ns_hex.dir/clean:
	cd /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/app && $(CMAKE_COMMAND) -P CMakeFiles/tfm_ns_hex.dir/cmake_clean.cmake
.PHONY : tf-m-tests/app/CMakeFiles/tfm_ns_hex.dir/clean

tf-m-tests/app/CMakeFiles/tfm_ns_hex.dir/depend:
	cd /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangyushao/tfm_2/trusted-firmware-m /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/lib/ext/tfm_test_repo-src/app /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/app /home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/app/CMakeFiles/tfm_ns_hex.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tf-m-tests/app/CMakeFiles/tfm_ns_hex.dir/depend

