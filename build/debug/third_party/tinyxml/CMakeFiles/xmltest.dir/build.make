# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kevin/workspace/dbdky_cac

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kevin/workspace/dbdky_cac/build/debug

# Include any dependencies generated for this target.
include third_party/tinyxml/CMakeFiles/xmltest.dir/depend.make

# Include the progress variables for this target.
include third_party/tinyxml/CMakeFiles/xmltest.dir/progress.make

# Include the compile flags for this target's objects.
include third_party/tinyxml/CMakeFiles/xmltest.dir/flags.make

third_party/tinyxml/CMakeFiles/xmltest.dir/xmltest.cpp.o: third_party/tinyxml/CMakeFiles/xmltest.dir/flags.make
third_party/tinyxml/CMakeFiles/xmltest.dir/xmltest.cpp.o: ../../third_party/tinyxml/xmltest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/build/debug/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third_party/tinyxml/CMakeFiles/xmltest.dir/xmltest.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/tinyxml && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/xmltest.dir/xmltest.cpp.o -c /home/kevin/workspace/dbdky_cac/third_party/tinyxml/xmltest.cpp

third_party/tinyxml/CMakeFiles/xmltest.dir/xmltest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xmltest.dir/xmltest.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/tinyxml && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kevin/workspace/dbdky_cac/third_party/tinyxml/xmltest.cpp > CMakeFiles/xmltest.dir/xmltest.cpp.i

third_party/tinyxml/CMakeFiles/xmltest.dir/xmltest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xmltest.dir/xmltest.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/tinyxml && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kevin/workspace/dbdky_cac/third_party/tinyxml/xmltest.cpp -o CMakeFiles/xmltest.dir/xmltest.cpp.s

third_party/tinyxml/CMakeFiles/xmltest.dir/xmltest.cpp.o.requires:
.PHONY : third_party/tinyxml/CMakeFiles/xmltest.dir/xmltest.cpp.o.requires

third_party/tinyxml/CMakeFiles/xmltest.dir/xmltest.cpp.o.provides: third_party/tinyxml/CMakeFiles/xmltest.dir/xmltest.cpp.o.requires
	$(MAKE) -f third_party/tinyxml/CMakeFiles/xmltest.dir/build.make third_party/tinyxml/CMakeFiles/xmltest.dir/xmltest.cpp.o.provides.build
.PHONY : third_party/tinyxml/CMakeFiles/xmltest.dir/xmltest.cpp.o.provides

third_party/tinyxml/CMakeFiles/xmltest.dir/xmltest.cpp.o.provides.build: third_party/tinyxml/CMakeFiles/xmltest.dir/xmltest.cpp.o

# Object files for target xmltest
xmltest_OBJECTS = \
"CMakeFiles/xmltest.dir/xmltest.cpp.o"

# External object files for target xmltest
xmltest_EXTERNAL_OBJECTS =

bin/xmltest: third_party/tinyxml/CMakeFiles/xmltest.dir/xmltest.cpp.o
bin/xmltest: lib/libtinyxml.a
bin/xmltest: third_party/tinyxml/CMakeFiles/xmltest.dir/build.make
bin/xmltest: third_party/tinyxml/CMakeFiles/xmltest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/xmltest"
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/tinyxml && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xmltest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third_party/tinyxml/CMakeFiles/xmltest.dir/build: bin/xmltest
.PHONY : third_party/tinyxml/CMakeFiles/xmltest.dir/build

third_party/tinyxml/CMakeFiles/xmltest.dir/requires: third_party/tinyxml/CMakeFiles/xmltest.dir/xmltest.cpp.o.requires
.PHONY : third_party/tinyxml/CMakeFiles/xmltest.dir/requires

third_party/tinyxml/CMakeFiles/xmltest.dir/clean:
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/tinyxml && $(CMAKE_COMMAND) -P CMakeFiles/xmltest.dir/cmake_clean.cmake
.PHONY : third_party/tinyxml/CMakeFiles/xmltest.dir/clean

third_party/tinyxml/CMakeFiles/xmltest.dir/depend:
	cd /home/kevin/workspace/dbdky_cac/build/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kevin/workspace/dbdky_cac /home/kevin/workspace/dbdky_cac/third_party/tinyxml /home/kevin/workspace/dbdky_cac/build/debug /home/kevin/workspace/dbdky_cac/build/debug/third_party/tinyxml /home/kevin/workspace/dbdky_cac/build/debug/third_party/tinyxml/CMakeFiles/xmltest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/tinyxml/CMakeFiles/xmltest.dir/depend

