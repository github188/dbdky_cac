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
include third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/depend.make

# Include the progress variables for this target.
include third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/progress.make

# Include the compile flags for this target's objects.
include third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/flags.make

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/unit_fixture.cpp.o: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/flags.make
third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/unit_fixture.cpp.o: ../../../../../../third_party/mysql-connector-c++-1.1.3/test/unit/unit_fixture.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/unit_fixture.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/classes && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -o CMakeFiles/test_connection.dir/__/unit_fixture.cpp.o -c /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/unit_fixture.cpp

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/unit_fixture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_connection.dir/__/unit_fixture.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/classes && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -E /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/unit_fixture.cpp > CMakeFiles/test_connection.dir/__/unit_fixture.cpp.i

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/unit_fixture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_connection.dir/__/unit_fixture.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/classes && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -S /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/unit_fixture.cpp -o CMakeFiles/test_connection.dir/__/unit_fixture.cpp.s

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/unit_fixture.cpp.o.requires:
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/unit_fixture.cpp.o.requires

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/unit_fixture.cpp.o.provides: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/unit_fixture.cpp.o.requires
	$(MAKE) -f third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/build.make third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/unit_fixture.cpp.o.provides.build
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/unit_fixture.cpp.o.provides

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/unit_fixture.cpp.o.provides.build: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/unit_fixture.cpp.o

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/main.cpp.o: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/flags.make
third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/main.cpp.o: ../../../../../../third_party/mysql-connector-c++-1.1.3/test/unit/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/main.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/classes && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -o CMakeFiles/test_connection.dir/__/main.cpp.o -c /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/main.cpp

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_connection.dir/__/main.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/classes && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -E /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/main.cpp > CMakeFiles/test_connection.dir/__/main.cpp.i

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_connection.dir/__/main.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/classes && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -S /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/main.cpp -o CMakeFiles/test_connection.dir/__/main.cpp.s

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/main.cpp.o.requires:
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/main.cpp.o.requires

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/main.cpp.o.provides: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/main.cpp.o.requires
	$(MAKE) -f third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/build.make third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/main.cpp.o.provides.build
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/main.cpp.o.provides

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/main.cpp.o.provides.build: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/main.cpp.o

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/connection.cpp.o: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/flags.make
third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/connection.cpp.o: ../../../../../../third_party/mysql-connector-c++-1.1.3/test/unit/classes/connection.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/connection.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/classes && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -o CMakeFiles/test_connection.dir/connection.cpp.o -c /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/classes/connection.cpp

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/connection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_connection.dir/connection.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/classes && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -E /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/classes/connection.cpp > CMakeFiles/test_connection.dir/connection.cpp.i

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/connection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_connection.dir/connection.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/classes && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)    -I/usr/include/mysql -DBIG_JOINS=1  -fno-strict-aliasing  -g -S /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/classes/connection.cpp -o CMakeFiles/test_connection.dir/connection.cpp.s

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/connection.cpp.o.requires:
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/connection.cpp.o.requires

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/connection.cpp.o.provides: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/connection.cpp.o.requires
	$(MAKE) -f third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/build.make third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/connection.cpp.o.provides.build
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/connection.cpp.o.provides

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/connection.cpp.o.provides.build: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/connection.cpp.o

# Object files for target test_connection
test_connection_OBJECTS = \
"CMakeFiles/test_connection.dir/__/unit_fixture.cpp.o" \
"CMakeFiles/test_connection.dir/__/main.cpp.o" \
"CMakeFiles/test_connection.dir/connection.cpp.o"

# External object files for target test_connection
test_connection_EXTERNAL_OBJECTS =

bin/connection: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/unit_fixture.cpp.o
bin/connection: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/main.cpp.o
bin/connection: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/connection.cpp.o
bin/connection: lib/libmysqlcppconn.so.7.1.1.3
bin/connection: lib/libtest_framework.a
bin/connection: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/build.make
bin/connection: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../../../bin/connection"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/classes && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_connection.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/build: bin/connection
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/build

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/requires: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/unit_fixture.cpp.o.requires
third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/requires: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/__/main.cpp.o.requires
third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/requires: third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/connection.cpp.o.requires
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/requires

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/clean:
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/classes && $(CMAKE_COMMAND) -P CMakeFiles/test_connection.dir/cmake_clean.cmake
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/clean

third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/depend:
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kevin/workspace/dbdky_cac /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/test/unit/classes /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/classes /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/mysql-connector-c++-1.1.3/test/unit/classes/CMakeFiles/test_connection.dir/depend

