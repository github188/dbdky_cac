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
include third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/depend.make

# Include the progress variables for this target.
include third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/progress.make

# Include the compile flags for this target's objects.
include third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/flags.make

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.o: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/flags.make
third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.o: ../../third_party/mysql-connector-c++-1.1.3/test/unit/unit_fixture.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/build/debug/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/performance && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -o CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.o -c /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/unit_fixture.cpp

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/performance && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -E /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/unit_fixture.cpp > CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.i

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/performance && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -S /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/unit_fixture.cpp -o CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.s

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.o.requires:
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.o.requires

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.o.provides: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.o.requires
	$(MAKE) -f third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/build.make third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.o.provides.build
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.o.provides

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.o.provides.build: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.o

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/main.cpp.o: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/flags.make
third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/main.cpp.o: ../../third_party/mysql-connector-c++-1.1.3/test/unit/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/build/debug/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/main.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/performance && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -o CMakeFiles/perf_statement.dir/__/main.cpp.o -c /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/main.cpp

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/perf_statement.dir/__/main.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/performance && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -E /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/main.cpp > CMakeFiles/perf_statement.dir/__/main.cpp.i

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/perf_statement.dir/__/main.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/performance && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -S /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/main.cpp -o CMakeFiles/perf_statement.dir/__/main.cpp.s

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/main.cpp.o.requires:
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/main.cpp.o.requires

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/main.cpp.o.provides: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/main.cpp.o.requires
	$(MAKE) -f third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/build.make third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/main.cpp.o.provides.build
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/main.cpp.o.provides

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/main.cpp.o.provides.build: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/main.cpp.o

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/perf_statement.cpp.o: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/flags.make
third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/perf_statement.cpp.o: ../../third_party/mysql-connector-c++-1.1.3/test/unit/performance/perf_statement.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/build/debug/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/perf_statement.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/performance && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -o CMakeFiles/perf_statement.dir/perf_statement.cpp.o -c /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/performance/perf_statement.cpp

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/perf_statement.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/perf_statement.dir/perf_statement.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/performance && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -E /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/performance/perf_statement.cpp > CMakeFiles/perf_statement.dir/perf_statement.cpp.i

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/perf_statement.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/perf_statement.dir/perf_statement.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/performance && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -S /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/performance/perf_statement.cpp -o CMakeFiles/perf_statement.dir/perf_statement.cpp.s

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/perf_statement.cpp.o.requires:
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/perf_statement.cpp.o.requires

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/perf_statement.cpp.o.provides: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/perf_statement.cpp.o.requires
	$(MAKE) -f third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/build.make third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/perf_statement.cpp.o.provides.build
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/perf_statement.cpp.o.provides

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/perf_statement.cpp.o.provides.build: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/perf_statement.cpp.o

# Object files for target perf_statement
perf_statement_OBJECTS = \
"CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.o" \
"CMakeFiles/perf_statement.dir/__/main.cpp.o" \
"CMakeFiles/perf_statement.dir/perf_statement.cpp.o"

# External object files for target perf_statement
perf_statement_EXTERNAL_OBJECTS =

bin/perf_statement: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.o
bin/perf_statement: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/main.cpp.o
bin/perf_statement: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/perf_statement.cpp.o
bin/perf_statement: lib/libmysqlcppconn.so.7.1.1.3
bin/perf_statement: lib/libtest_framework.a
bin/perf_statement: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/build.make
bin/perf_statement: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../../../bin/perf_statement"
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/performance && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/perf_statement.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/build: bin/perf_statement
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/build

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/requires: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/unit_fixture.cpp.o.requires
third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/requires: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/__/main.cpp.o.requires
third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/requires: third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/perf_statement.cpp.o.requires
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/requires

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/clean:
	cd /home/kevin/workspace/dbdky_cac/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/performance && $(CMAKE_COMMAND) -P CMakeFiles/perf_statement.dir/cmake_clean.cmake
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/clean

third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/depend:
	cd /home/kevin/workspace/dbdky_cac/build/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kevin/workspace/dbdky_cac /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/performance /home/kevin/workspace/dbdky_cac/build/debug /home/kevin/workspace/dbdky_cac/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/performance /home/kevin/workspace/dbdky_cac/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/performance/CMakeFiles/perf_statement.dir/depend

