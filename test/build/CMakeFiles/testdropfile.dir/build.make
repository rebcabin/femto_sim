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
include CMakeFiles/testdropfile.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testdropfile.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testdropfile.dir/flags.make

CMakeFiles/testdropfile.dir/testdropfile.c.o: CMakeFiles/testdropfile.dir/flags.make
CMakeFiles/testdropfile.dir/testdropfile.c.o: ../testdropfile.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testdropfile.dir/testdropfile.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testdropfile.dir/testdropfile.c.o   -c /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testdropfile.c

CMakeFiles/testdropfile.dir/testdropfile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testdropfile.dir/testdropfile.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testdropfile.c > CMakeFiles/testdropfile.dir/testdropfile.c.i

CMakeFiles/testdropfile.dir/testdropfile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testdropfile.dir/testdropfile.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testdropfile.c -o CMakeFiles/testdropfile.dir/testdropfile.c.s

CMakeFiles/testdropfile.dir/testdropfile.c.o.requires:

.PHONY : CMakeFiles/testdropfile.dir/testdropfile.c.o.requires

CMakeFiles/testdropfile.dir/testdropfile.c.o.provides: CMakeFiles/testdropfile.dir/testdropfile.c.o.requires
	$(MAKE) -f CMakeFiles/testdropfile.dir/build.make CMakeFiles/testdropfile.dir/testdropfile.c.o.provides.build
.PHONY : CMakeFiles/testdropfile.dir/testdropfile.c.o.provides

CMakeFiles/testdropfile.dir/testdropfile.c.o.provides.build: CMakeFiles/testdropfile.dir/testdropfile.c.o


# Object files for target testdropfile
testdropfile_OBJECTS = \
"CMakeFiles/testdropfile.dir/testdropfile.c.o"

# External object files for target testdropfile
testdropfile_EXTERNAL_OBJECTS =

testdropfile: CMakeFiles/testdropfile.dir/testdropfile.c.o
testdropfile: CMakeFiles/testdropfile.dir/build.make
testdropfile: CMakeFiles/testdropfile.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testdropfile"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testdropfile.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testdropfile.dir/build: testdropfile

.PHONY : CMakeFiles/testdropfile.dir/build

CMakeFiles/testdropfile.dir/requires: CMakeFiles/testdropfile.dir/testdropfile.c.o.requires

.PHONY : CMakeFiles/testdropfile.dir/requires

CMakeFiles/testdropfile.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testdropfile.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testdropfile.dir/clean

CMakeFiles/testdropfile.dir/depend:
	cd /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles/testdropfile.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testdropfile.dir/depend

