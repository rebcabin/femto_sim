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
include CMakeFiles/testloadso.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testloadso.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testloadso.dir/flags.make

CMakeFiles/testloadso.dir/testloadso.c.o: CMakeFiles/testloadso.dir/flags.make
CMakeFiles/testloadso.dir/testloadso.c.o: ../testloadso.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testloadso.dir/testloadso.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testloadso.dir/testloadso.c.o   -c /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testloadso.c

CMakeFiles/testloadso.dir/testloadso.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testloadso.dir/testloadso.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testloadso.c > CMakeFiles/testloadso.dir/testloadso.c.i

CMakeFiles/testloadso.dir/testloadso.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testloadso.dir/testloadso.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testloadso.c -o CMakeFiles/testloadso.dir/testloadso.c.s

CMakeFiles/testloadso.dir/testloadso.c.o.requires:

.PHONY : CMakeFiles/testloadso.dir/testloadso.c.o.requires

CMakeFiles/testloadso.dir/testloadso.c.o.provides: CMakeFiles/testloadso.dir/testloadso.c.o.requires
	$(MAKE) -f CMakeFiles/testloadso.dir/build.make CMakeFiles/testloadso.dir/testloadso.c.o.provides.build
.PHONY : CMakeFiles/testloadso.dir/testloadso.c.o.provides

CMakeFiles/testloadso.dir/testloadso.c.o.provides.build: CMakeFiles/testloadso.dir/testloadso.c.o


# Object files for target testloadso
testloadso_OBJECTS = \
"CMakeFiles/testloadso.dir/testloadso.c.o"

# External object files for target testloadso
testloadso_EXTERNAL_OBJECTS =

testloadso: CMakeFiles/testloadso.dir/testloadso.c.o
testloadso: CMakeFiles/testloadso.dir/build.make
testloadso: CMakeFiles/testloadso.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testloadso"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testloadso.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testloadso.dir/build: testloadso

.PHONY : CMakeFiles/testloadso.dir/build

CMakeFiles/testloadso.dir/requires: CMakeFiles/testloadso.dir/testloadso.c.o.requires

.PHONY : CMakeFiles/testloadso.dir/requires

CMakeFiles/testloadso.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testloadso.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testloadso.dir/clean

CMakeFiles/testloadso.dir/depend:
	cd /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles/testloadso.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testloadso.dir/depend

