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
include CMakeFiles/testime.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testime.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testime.dir/flags.make

CMakeFiles/testime.dir/testime.c.o: CMakeFiles/testime.dir/flags.make
CMakeFiles/testime.dir/testime.c.o: ../testime.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testime.dir/testime.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testime.dir/testime.c.o   -c /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testime.c

CMakeFiles/testime.dir/testime.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testime.dir/testime.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testime.c > CMakeFiles/testime.dir/testime.c.i

CMakeFiles/testime.dir/testime.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testime.dir/testime.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testime.c -o CMakeFiles/testime.dir/testime.c.s

CMakeFiles/testime.dir/testime.c.o.requires:

.PHONY : CMakeFiles/testime.dir/testime.c.o.requires

CMakeFiles/testime.dir/testime.c.o.provides: CMakeFiles/testime.dir/testime.c.o.requires
	$(MAKE) -f CMakeFiles/testime.dir/build.make CMakeFiles/testime.dir/testime.c.o.provides.build
.PHONY : CMakeFiles/testime.dir/testime.c.o.provides

CMakeFiles/testime.dir/testime.c.o.provides.build: CMakeFiles/testime.dir/testime.c.o


# Object files for target testime
testime_OBJECTS = \
"CMakeFiles/testime.dir/testime.c.o"

# External object files for target testime
testime_EXTERNAL_OBJECTS =

testime: CMakeFiles/testime.dir/testime.c.o
testime: CMakeFiles/testime.dir/build.make
testime: CMakeFiles/testime.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testime"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testime.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testime.dir/build: testime

.PHONY : CMakeFiles/testime.dir/build

CMakeFiles/testime.dir/requires: CMakeFiles/testime.dir/testime.c.o.requires

.PHONY : CMakeFiles/testime.dir/requires

CMakeFiles/testime.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testime.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testime.dir/clean

CMakeFiles/testime.dir/depend:
	cd /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles/testime.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testime.dir/depend

