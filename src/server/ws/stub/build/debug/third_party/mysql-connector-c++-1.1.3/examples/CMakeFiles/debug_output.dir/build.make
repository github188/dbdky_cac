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
CMAKE_BINARY_DIR = /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug

# Include any dependencies generated for this target.
include third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/depend.make

# Include the progress variables for this target.
include third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/progress.make

# Include the compile flags for this target's objects.
include third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/flags.make

third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/debug_output.cpp.o: third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/flags.make
third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/debug_output.cpp.o: ../../../../../../third_party/mysql-connector-c++-1.1.3/examples/debug_output.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/debug_output.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -o CMakeFiles/debug_output.dir/debug_output.cpp.o -c /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/examples/debug_output.cpp

third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/debug_output.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/debug_output.dir/debug_output.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -E /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/examples/debug_output.cpp > CMakeFiles/debug_output.dir/debug_output.cpp.i

third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/debug_output.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/debug_output.dir/debug_output.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -S /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/examples/debug_output.cpp -o CMakeFiles/debug_output.dir/debug_output.cpp.s

third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/debug_output.cpp.o.requires:
.PHONY : third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/debug_output.cpp.o.requires

third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/debug_output.cpp.o.provides: third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/debug_output.cpp.o.requires
	$(MAKE) -f third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/build.make third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/debug_output.cpp.o.provides.build
.PHONY : third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/debug_output.cpp.o.provides

third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/debug_output.cpp.o.provides.build: third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/debug_output.cpp.o

# Object files for target debug_output
debug_output_OBJECTS = \
"CMakeFiles/debug_output.dir/debug_output.cpp.o"

# External object files for target debug_output
debug_output_EXTERNAL_OBJECTS =

bin/debug_output: third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/debug_output.cpp.o
bin/debug_output: lib/libmysqlcppconn-static.a
bin/debug_output: third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/build.make
bin/debug_output: third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../bin/debug_output"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/debug_output.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/build: bin/debug_output
.PHONY : third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/build

third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/requires: third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/debug_output.cpp.o.requires
.PHONY : third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/requires

third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/clean:
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/examples && $(CMAKE_COMMAND) -P CMakeFiles/debug_output.dir/cmake_clean.cmake
.PHONY : third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/clean

third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/depend:
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kevin/workspace/dbdky_cac /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/examples /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/examples /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/mysql-connector-c++-1.1.3/examples/CMakeFiles/debug_output.dir/depend

