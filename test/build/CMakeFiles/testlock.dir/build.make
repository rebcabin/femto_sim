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
include CMakeFiles/testlock.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testlock.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testlock.dir/flags.make

CMakeFiles/testlock.dir/testlock.c.o: CMakeFiles/testlock.dir/flags.make
CMakeFiles/testlock.dir/testlock.c.o: ../testlock.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testlock.dir/testlock.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testlock.dir/testlock.c.o   -c /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testlock.c

CMakeFiles/testlock.dir/testlock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testlock.dir/testlock.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testlock.c > CMakeFiles/testlock.dir/testlock.c.i

CMakeFiles/testlock.dir/testlock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testlock.dir/testlock.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testlock.c -o CMakeFiles/testlock.dir/testlock.c.s

CMakeFiles/testlock.dir/testlock.c.o.requires:

.PHONY : CMakeFiles/testlock.dir/testlock.c.o.requires

CMakeFiles/testlock.dir/testlock.c.o.provides: CMakeFiles/testlock.dir/testlock.c.o.requires
	$(MAKE) -f CMakeFiles/testlock.dir/build.make CMakeFiles/testlock.dir/testlock.c.o.provides.build
.PHONY : CMakeFiles/testlock.dir/testlock.c.o.provides

CMakeFiles/testlock.dir/testlock.c.o.provides.build: CMakeFiles/testlock.dir/testlock.c.o


# Object files for target testlock
testlock_OBJECTS = \
"CMakeFiles/testlock.dir/testlock.c.o"

# External object files for target testlock
testlock_EXTERNAL_OBJECTS =

testlock: CMakeFiles/testlock.dir/testlock.c.o
testlock: CMakeFiles/testlock.dir/build.make
testlock: CMakeFiles/testlock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testlock"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testlock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testlock.dir/build: testlock

.PHONY : CMakeFiles/testlock.dir/build

CMakeFiles/testlock.dir/requires: CMakeFiles/testlock.dir/testlock.c.o.requires

.PHONY : CMakeFiles/testlock.dir/requires

CMakeFiles/testlock.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testlock.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testlock.dir/clean

CMakeFiles/testlock.dir/depend:
	cd /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles/testlock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testlock.dir/depend
