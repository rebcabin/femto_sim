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
include CMakeFiles/testmessage.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testmessage.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testmessage.dir/flags.make

CMakeFiles/testmessage.dir/testmessage.c.o: CMakeFiles/testmessage.dir/flags.make
CMakeFiles/testmessage.dir/testmessage.c.o: ../testmessage.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testmessage.dir/testmessage.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testmessage.dir/testmessage.c.o   -c /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testmessage.c

CMakeFiles/testmessage.dir/testmessage.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testmessage.dir/testmessage.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testmessage.c > CMakeFiles/testmessage.dir/testmessage.c.i

CMakeFiles/testmessage.dir/testmessage.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testmessage.dir/testmessage.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testmessage.c -o CMakeFiles/testmessage.dir/testmessage.c.s

CMakeFiles/testmessage.dir/testmessage.c.o.requires:

.PHONY : CMakeFiles/testmessage.dir/testmessage.c.o.requires

CMakeFiles/testmessage.dir/testmessage.c.o.provides: CMakeFiles/testmessage.dir/testmessage.c.o.requires
	$(MAKE) -f CMakeFiles/testmessage.dir/build.make CMakeFiles/testmessage.dir/testmessage.c.o.provides.build
.PHONY : CMakeFiles/testmessage.dir/testmessage.c.o.provides

CMakeFiles/testmessage.dir/testmessage.c.o.provides.build: CMakeFiles/testmessage.dir/testmessage.c.o


# Object files for target testmessage
testmessage_OBJECTS = \
"CMakeFiles/testmessage.dir/testmessage.c.o"

# External object files for target testmessage
testmessage_EXTERNAL_OBJECTS =

testmessage: CMakeFiles/testmessage.dir/testmessage.c.o
testmessage: CMakeFiles/testmessage.dir/build.make
testmessage: CMakeFiles/testmessage.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testmessage"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testmessage.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testmessage.dir/build: testmessage

.PHONY : CMakeFiles/testmessage.dir/build

CMakeFiles/testmessage.dir/requires: CMakeFiles/testmessage.dir/testmessage.c.o.requires

.PHONY : CMakeFiles/testmessage.dir/requires

CMakeFiles/testmessage.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testmessage.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testmessage.dir/clean

CMakeFiles/testmessage.dir/depend:
	cd /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles/testmessage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testmessage.dir/depend

