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
include CMakeFiles/loopwavequeue.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/loopwavequeue.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/loopwavequeue.dir/flags.make

CMakeFiles/loopwavequeue.dir/loopwavequeue.c.o: CMakeFiles/loopwavequeue.dir/flags.make
CMakeFiles/loopwavequeue.dir/loopwavequeue.c.o: ../loopwavequeue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/loopwavequeue.dir/loopwavequeue.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/loopwavequeue.dir/loopwavequeue.c.o   -c /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/loopwavequeue.c

CMakeFiles/loopwavequeue.dir/loopwavequeue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/loopwavequeue.dir/loopwavequeue.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/loopwavequeue.c > CMakeFiles/loopwavequeue.dir/loopwavequeue.c.i

CMakeFiles/loopwavequeue.dir/loopwavequeue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/loopwavequeue.dir/loopwavequeue.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/loopwavequeue.c -o CMakeFiles/loopwavequeue.dir/loopwavequeue.c.s

CMakeFiles/loopwavequeue.dir/loopwavequeue.c.o.requires:

.PHONY : CMakeFiles/loopwavequeue.dir/loopwavequeue.c.o.requires

CMakeFiles/loopwavequeue.dir/loopwavequeue.c.o.provides: CMakeFiles/loopwavequeue.dir/loopwavequeue.c.o.requires
	$(MAKE) -f CMakeFiles/loopwavequeue.dir/build.make CMakeFiles/loopwavequeue.dir/loopwavequeue.c.o.provides.build
.PHONY : CMakeFiles/loopwavequeue.dir/loopwavequeue.c.o.provides

CMakeFiles/loopwavequeue.dir/loopwavequeue.c.o.provides.build: CMakeFiles/loopwavequeue.dir/loopwavequeue.c.o


# Object files for target loopwavequeue
loopwavequeue_OBJECTS = \
"CMakeFiles/loopwavequeue.dir/loopwavequeue.c.o"

# External object files for target loopwavequeue
loopwavequeue_EXTERNAL_OBJECTS =

loopwavequeue: CMakeFiles/loopwavequeue.dir/loopwavequeue.c.o
loopwavequeue: CMakeFiles/loopwavequeue.dir/build.make
loopwavequeue: CMakeFiles/loopwavequeue.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable loopwavequeue"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/loopwavequeue.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/loopwavequeue.dir/build: loopwavequeue

.PHONY : CMakeFiles/loopwavequeue.dir/build

CMakeFiles/loopwavequeue.dir/requires: CMakeFiles/loopwavequeue.dir/loopwavequeue.c.o.requires

.PHONY : CMakeFiles/loopwavequeue.dir/requires

CMakeFiles/loopwavequeue.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/loopwavequeue.dir/cmake_clean.cmake
.PHONY : CMakeFiles/loopwavequeue.dir/clean

CMakeFiles/loopwavequeue.dir/depend:
	cd /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles/loopwavequeue.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/loopwavequeue.dir/depend

