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
include CMakeFiles/loopwave.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/loopwave.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/loopwave.dir/flags.make

CMakeFiles/loopwave.dir/loopwave.c.o: CMakeFiles/loopwave.dir/flags.make
CMakeFiles/loopwave.dir/loopwave.c.o: ../loopwave.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/loopwave.dir/loopwave.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/loopwave.dir/loopwave.c.o   -c /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/loopwave.c

CMakeFiles/loopwave.dir/loopwave.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/loopwave.dir/loopwave.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/loopwave.c > CMakeFiles/loopwave.dir/loopwave.c.i

CMakeFiles/loopwave.dir/loopwave.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/loopwave.dir/loopwave.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/loopwave.c -o CMakeFiles/loopwave.dir/loopwave.c.s

CMakeFiles/loopwave.dir/loopwave.c.o.requires:

.PHONY : CMakeFiles/loopwave.dir/loopwave.c.o.requires

CMakeFiles/loopwave.dir/loopwave.c.o.provides: CMakeFiles/loopwave.dir/loopwave.c.o.requires
	$(MAKE) -f CMakeFiles/loopwave.dir/build.make CMakeFiles/loopwave.dir/loopwave.c.o.provides.build
.PHONY : CMakeFiles/loopwave.dir/loopwave.c.o.provides

CMakeFiles/loopwave.dir/loopwave.c.o.provides.build: CMakeFiles/loopwave.dir/loopwave.c.o


# Object files for target loopwave
loopwave_OBJECTS = \
"CMakeFiles/loopwave.dir/loopwave.c.o"

# External object files for target loopwave
loopwave_EXTERNAL_OBJECTS =

loopwave: CMakeFiles/loopwave.dir/loopwave.c.o
loopwave: CMakeFiles/loopwave.dir/build.make
loopwave: CMakeFiles/loopwave.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable loopwave"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/loopwave.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/loopwave.dir/build: loopwave

.PHONY : CMakeFiles/loopwave.dir/build

CMakeFiles/loopwave.dir/requires: CMakeFiles/loopwave.dir/loopwave.c.o.requires

.PHONY : CMakeFiles/loopwave.dir/requires

CMakeFiles/loopwave.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/loopwave.dir/cmake_clean.cmake
.PHONY : CMakeFiles/loopwave.dir/clean

CMakeFiles/loopwave.dir/depend:
	cd /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles/loopwave.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/loopwave.dir/depend

