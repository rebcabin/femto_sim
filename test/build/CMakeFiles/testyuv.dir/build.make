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
include CMakeFiles/testyuv.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testyuv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testyuv.dir/flags.make

CMakeFiles/testyuv.dir/testyuv.c.o: CMakeFiles/testyuv.dir/flags.make
CMakeFiles/testyuv.dir/testyuv.c.o: ../testyuv.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testyuv.dir/testyuv.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testyuv.dir/testyuv.c.o   -c /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testyuv.c

CMakeFiles/testyuv.dir/testyuv.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testyuv.dir/testyuv.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testyuv.c > CMakeFiles/testyuv.dir/testyuv.c.i

CMakeFiles/testyuv.dir/testyuv.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testyuv.dir/testyuv.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testyuv.c -o CMakeFiles/testyuv.dir/testyuv.c.s

CMakeFiles/testyuv.dir/testyuv.c.o.requires:

.PHONY : CMakeFiles/testyuv.dir/testyuv.c.o.requires

CMakeFiles/testyuv.dir/testyuv.c.o.provides: CMakeFiles/testyuv.dir/testyuv.c.o.requires
	$(MAKE) -f CMakeFiles/testyuv.dir/build.make CMakeFiles/testyuv.dir/testyuv.c.o.provides.build
.PHONY : CMakeFiles/testyuv.dir/testyuv.c.o.provides

CMakeFiles/testyuv.dir/testyuv.c.o.provides.build: CMakeFiles/testyuv.dir/testyuv.c.o


CMakeFiles/testyuv.dir/testyuv_cvt.c.o: CMakeFiles/testyuv.dir/flags.make
CMakeFiles/testyuv.dir/testyuv_cvt.c.o: ../testyuv_cvt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/testyuv.dir/testyuv_cvt.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testyuv.dir/testyuv_cvt.c.o   -c /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testyuv_cvt.c

CMakeFiles/testyuv.dir/testyuv_cvt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testyuv.dir/testyuv_cvt.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testyuv_cvt.c > CMakeFiles/testyuv.dir/testyuv_cvt.c.i

CMakeFiles/testyuv.dir/testyuv_cvt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testyuv.dir/testyuv_cvt.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/testyuv_cvt.c -o CMakeFiles/testyuv.dir/testyuv_cvt.c.s

CMakeFiles/testyuv.dir/testyuv_cvt.c.o.requires:

.PHONY : CMakeFiles/testyuv.dir/testyuv_cvt.c.o.requires

CMakeFiles/testyuv.dir/testyuv_cvt.c.o.provides: CMakeFiles/testyuv.dir/testyuv_cvt.c.o.requires
	$(MAKE) -f CMakeFiles/testyuv.dir/build.make CMakeFiles/testyuv.dir/testyuv_cvt.c.o.provides.build
.PHONY : CMakeFiles/testyuv.dir/testyuv_cvt.c.o.provides

CMakeFiles/testyuv.dir/testyuv_cvt.c.o.provides.build: CMakeFiles/testyuv.dir/testyuv_cvt.c.o


# Object files for target testyuv
testyuv_OBJECTS = \
"CMakeFiles/testyuv.dir/testyuv.c.o" \
"CMakeFiles/testyuv.dir/testyuv_cvt.c.o"

# External object files for target testyuv
testyuv_EXTERNAL_OBJECTS =

testyuv: CMakeFiles/testyuv.dir/testyuv.c.o
testyuv: CMakeFiles/testyuv.dir/testyuv_cvt.c.o
testyuv: CMakeFiles/testyuv.dir/build.make
testyuv: CMakeFiles/testyuv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable testyuv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testyuv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testyuv.dir/build: testyuv

.PHONY : CMakeFiles/testyuv.dir/build

CMakeFiles/testyuv.dir/requires: CMakeFiles/testyuv.dir/testyuv.c.o.requires
CMakeFiles/testyuv.dir/requires: CMakeFiles/testyuv.dir/testyuv_cvt.c.o.requires

.PHONY : CMakeFiles/testyuv.dir/requires

CMakeFiles/testyuv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testyuv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testyuv.dir/clean

CMakeFiles/testyuv.dir/depend:
	cd /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build /home/ANT.AMAZON.COM/bbeckman/Downloads/SDL2-2.0.9/test/build/CMakeFiles/testyuv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testyuv.dir/depend

