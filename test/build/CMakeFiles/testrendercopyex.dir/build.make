# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build

# Include any dependencies generated for this target.
include CMakeFiles/testrendercopyex.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testrendercopyex.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testrendercopyex.dir/flags.make

CMakeFiles/testrendercopyex.dir/testrendercopyex.c.o: CMakeFiles/testrendercopyex.dir/flags.make
CMakeFiles/testrendercopyex.dir/testrendercopyex.c.o: ../testrendercopyex.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testrendercopyex.dir/testrendercopyex.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testrendercopyex.dir/testrendercopyex.c.o   -c /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testrendercopyex.c

CMakeFiles/testrendercopyex.dir/testrendercopyex.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testrendercopyex.dir/testrendercopyex.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testrendercopyex.c > CMakeFiles/testrendercopyex.dir/testrendercopyex.c.i

CMakeFiles/testrendercopyex.dir/testrendercopyex.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testrendercopyex.dir/testrendercopyex.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testrendercopyex.c -o CMakeFiles/testrendercopyex.dir/testrendercopyex.c.s

CMakeFiles/testrendercopyex.dir/testrendercopyex.c.o.requires:

.PHONY : CMakeFiles/testrendercopyex.dir/testrendercopyex.c.o.requires

CMakeFiles/testrendercopyex.dir/testrendercopyex.c.o.provides: CMakeFiles/testrendercopyex.dir/testrendercopyex.c.o.requires
	$(MAKE) -f CMakeFiles/testrendercopyex.dir/build.make CMakeFiles/testrendercopyex.dir/testrendercopyex.c.o.provides.build
.PHONY : CMakeFiles/testrendercopyex.dir/testrendercopyex.c.o.provides

CMakeFiles/testrendercopyex.dir/testrendercopyex.c.o.provides.build: CMakeFiles/testrendercopyex.dir/testrendercopyex.c.o


# Object files for target testrendercopyex
testrendercopyex_OBJECTS = \
"CMakeFiles/testrendercopyex.dir/testrendercopyex.c.o"

# External object files for target testrendercopyex
testrendercopyex_EXTERNAL_OBJECTS =

testrendercopyex: CMakeFiles/testrendercopyex.dir/testrendercopyex.c.o
testrendercopyex: CMakeFiles/testrendercopyex.dir/build.make
testrendercopyex: CMakeFiles/testrendercopyex.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testrendercopyex"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testrendercopyex.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testrendercopyex.dir/build: testrendercopyex

.PHONY : CMakeFiles/testrendercopyex.dir/build

CMakeFiles/testrendercopyex.dir/requires: CMakeFiles/testrendercopyex.dir/testrendercopyex.c.o.requires

.PHONY : CMakeFiles/testrendercopyex.dir/requires

CMakeFiles/testrendercopyex.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testrendercopyex.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testrendercopyex.dir/clean

CMakeFiles/testrendercopyex.dir/depend:
	cd /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles/testrendercopyex.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testrendercopyex.dir/depend

