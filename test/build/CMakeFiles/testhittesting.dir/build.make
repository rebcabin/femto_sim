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
include CMakeFiles/testhittesting.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testhittesting.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testhittesting.dir/flags.make

CMakeFiles/testhittesting.dir/testhittesting.c.o: CMakeFiles/testhittesting.dir/flags.make
CMakeFiles/testhittesting.dir/testhittesting.c.o: ../testhittesting.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testhittesting.dir/testhittesting.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testhittesting.dir/testhittesting.c.o   -c /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testhittesting.c

CMakeFiles/testhittesting.dir/testhittesting.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testhittesting.dir/testhittesting.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testhittesting.c > CMakeFiles/testhittesting.dir/testhittesting.c.i

CMakeFiles/testhittesting.dir/testhittesting.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testhittesting.dir/testhittesting.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testhittesting.c -o CMakeFiles/testhittesting.dir/testhittesting.c.s

CMakeFiles/testhittesting.dir/testhittesting.c.o.requires:

.PHONY : CMakeFiles/testhittesting.dir/testhittesting.c.o.requires

CMakeFiles/testhittesting.dir/testhittesting.c.o.provides: CMakeFiles/testhittesting.dir/testhittesting.c.o.requires
	$(MAKE) -f CMakeFiles/testhittesting.dir/build.make CMakeFiles/testhittesting.dir/testhittesting.c.o.provides.build
.PHONY : CMakeFiles/testhittesting.dir/testhittesting.c.o.provides

CMakeFiles/testhittesting.dir/testhittesting.c.o.provides.build: CMakeFiles/testhittesting.dir/testhittesting.c.o


# Object files for target testhittesting
testhittesting_OBJECTS = \
"CMakeFiles/testhittesting.dir/testhittesting.c.o"

# External object files for target testhittesting
testhittesting_EXTERNAL_OBJECTS =

testhittesting: CMakeFiles/testhittesting.dir/testhittesting.c.o
testhittesting: CMakeFiles/testhittesting.dir/build.make
testhittesting: CMakeFiles/testhittesting.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testhittesting"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testhittesting.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testhittesting.dir/build: testhittesting

.PHONY : CMakeFiles/testhittesting.dir/build

CMakeFiles/testhittesting.dir/requires: CMakeFiles/testhittesting.dir/testhittesting.c.o.requires

.PHONY : CMakeFiles/testhittesting.dir/requires

CMakeFiles/testhittesting.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testhittesting.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testhittesting.dir/clean

CMakeFiles/testhittesting.dir/depend:
	cd /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles/testhittesting.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testhittesting.dir/depend

