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
include src/utils/CMakeFiles/utils.dir/depend.make

# Include the progress variables for this target.
include src/utils/CMakeFiles/utils.dir/progress.make

# Include the compile flags for this target's objects.
include src/utils/CMakeFiles/utils.dir/flags.make

src/utils/CMakeFiles/utils.dir/FileUtil.cpp.o: src/utils/CMakeFiles/utils.dir/flags.make
src/utils/CMakeFiles/utils.dir/FileUtil.cpp.o: ../../../../../utils/FileUtil.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/utils/CMakeFiles/utils.dir/FileUtil.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/FileUtil.cpp.o -c /home/kevin/workspace/dbdky_cac/src/utils/FileUtil.cpp

src/utils/CMakeFiles/utils.dir/FileUtil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/FileUtil.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kevin/workspace/dbdky_cac/src/utils/FileUtil.cpp > CMakeFiles/utils.dir/FileUtil.cpp.i

src/utils/CMakeFiles/utils.dir/FileUtil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/FileUtil.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kevin/workspace/dbdky_cac/src/utils/FileUtil.cpp -o CMakeFiles/utils.dir/FileUtil.cpp.s

src/utils/CMakeFiles/utils.dir/FileUtil.cpp.o.requires:
.PHONY : src/utils/CMakeFiles/utils.dir/FileUtil.cpp.o.requires

src/utils/CMakeFiles/utils.dir/FileUtil.cpp.o.provides: src/utils/CMakeFiles/utils.dir/FileUtil.cpp.o.requires
	$(MAKE) -f src/utils/CMakeFiles/utils.dir/build.make src/utils/CMakeFiles/utils.dir/FileUtil.cpp.o.provides.build
.PHONY : src/utils/CMakeFiles/utils.dir/FileUtil.cpp.o.provides

src/utils/CMakeFiles/utils.dir/FileUtil.cpp.o.provides.build: src/utils/CMakeFiles/utils.dir/FileUtil.cpp.o

src/utils/CMakeFiles/utils.dir/TimeZone.cpp.o: src/utils/CMakeFiles/utils.dir/flags.make
src/utils/CMakeFiles/utils.dir/TimeZone.cpp.o: ../../../../../utils/TimeZone.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/utils/CMakeFiles/utils.dir/TimeZone.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/TimeZone.cpp.o -c /home/kevin/workspace/dbdky_cac/src/utils/TimeZone.cpp

src/utils/CMakeFiles/utils.dir/TimeZone.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/TimeZone.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kevin/workspace/dbdky_cac/src/utils/TimeZone.cpp > CMakeFiles/utils.dir/TimeZone.cpp.i

src/utils/CMakeFiles/utils.dir/TimeZone.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/TimeZone.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kevin/workspace/dbdky_cac/src/utils/TimeZone.cpp -o CMakeFiles/utils.dir/TimeZone.cpp.s

src/utils/CMakeFiles/utils.dir/TimeZone.cpp.o.requires:
.PHONY : src/utils/CMakeFiles/utils.dir/TimeZone.cpp.o.requires

src/utils/CMakeFiles/utils.dir/TimeZone.cpp.o.provides: src/utils/CMakeFiles/utils.dir/TimeZone.cpp.o.requires
	$(MAKE) -f src/utils/CMakeFiles/utils.dir/build.make src/utils/CMakeFiles/utils.dir/TimeZone.cpp.o.provides.build
.PHONY : src/utils/CMakeFiles/utils.dir/TimeZone.cpp.o.provides

src/utils/CMakeFiles/utils.dir/TimeZone.cpp.o.provides.build: src/utils/CMakeFiles/utils.dir/TimeZone.cpp.o

src/utils/CMakeFiles/utils.dir/Date.cpp.o: src/utils/CMakeFiles/utils.dir/flags.make
src/utils/CMakeFiles/utils.dir/Date.cpp.o: ../../../../../utils/Date.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/utils/CMakeFiles/utils.dir/Date.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/Date.cpp.o -c /home/kevin/workspace/dbdky_cac/src/utils/Date.cpp

src/utils/CMakeFiles/utils.dir/Date.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/Date.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kevin/workspace/dbdky_cac/src/utils/Date.cpp > CMakeFiles/utils.dir/Date.cpp.i

src/utils/CMakeFiles/utils.dir/Date.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/Date.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kevin/workspace/dbdky_cac/src/utils/Date.cpp -o CMakeFiles/utils.dir/Date.cpp.s

src/utils/CMakeFiles/utils.dir/Date.cpp.o.requires:
.PHONY : src/utils/CMakeFiles/utils.dir/Date.cpp.o.requires

src/utils/CMakeFiles/utils.dir/Date.cpp.o.provides: src/utils/CMakeFiles/utils.dir/Date.cpp.o.requires
	$(MAKE) -f src/utils/CMakeFiles/utils.dir/build.make src/utils/CMakeFiles/utils.dir/Date.cpp.o.provides.build
.PHONY : src/utils/CMakeFiles/utils.dir/Date.cpp.o.provides

src/utils/CMakeFiles/utils.dir/Date.cpp.o.provides.build: src/utils/CMakeFiles/utils.dir/Date.cpp.o

src/utils/CMakeFiles/utils.dir/LogStream.cpp.o: src/utils/CMakeFiles/utils.dir/flags.make
src/utils/CMakeFiles/utils.dir/LogStream.cpp.o: ../../../../../utils/LogStream.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/utils/CMakeFiles/utils.dir/LogStream.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/LogStream.cpp.o -c /home/kevin/workspace/dbdky_cac/src/utils/LogStream.cpp

src/utils/CMakeFiles/utils.dir/LogStream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/LogStream.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kevin/workspace/dbdky_cac/src/utils/LogStream.cpp > CMakeFiles/utils.dir/LogStream.cpp.i

src/utils/CMakeFiles/utils.dir/LogStream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/LogStream.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kevin/workspace/dbdky_cac/src/utils/LogStream.cpp -o CMakeFiles/utils.dir/LogStream.cpp.s

src/utils/CMakeFiles/utils.dir/LogStream.cpp.o.requires:
.PHONY : src/utils/CMakeFiles/utils.dir/LogStream.cpp.o.requires

src/utils/CMakeFiles/utils.dir/LogStream.cpp.o.provides: src/utils/CMakeFiles/utils.dir/LogStream.cpp.o.requires
	$(MAKE) -f src/utils/CMakeFiles/utils.dir/build.make src/utils/CMakeFiles/utils.dir/LogStream.cpp.o.provides.build
.PHONY : src/utils/CMakeFiles/utils.dir/LogStream.cpp.o.provides

src/utils/CMakeFiles/utils.dir/LogStream.cpp.o.provides.build: src/utils/CMakeFiles/utils.dir/LogStream.cpp.o

src/utils/CMakeFiles/utils.dir/Timestamp.cpp.o: src/utils/CMakeFiles/utils.dir/flags.make
src/utils/CMakeFiles/utils.dir/Timestamp.cpp.o: ../../../../../utils/Timestamp.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/utils/CMakeFiles/utils.dir/Timestamp.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/Timestamp.cpp.o -c /home/kevin/workspace/dbdky_cac/src/utils/Timestamp.cpp

src/utils/CMakeFiles/utils.dir/Timestamp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/Timestamp.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kevin/workspace/dbdky_cac/src/utils/Timestamp.cpp > CMakeFiles/utils.dir/Timestamp.cpp.i

src/utils/CMakeFiles/utils.dir/Timestamp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/Timestamp.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kevin/workspace/dbdky_cac/src/utils/Timestamp.cpp -o CMakeFiles/utils.dir/Timestamp.cpp.s

src/utils/CMakeFiles/utils.dir/Timestamp.cpp.o.requires:
.PHONY : src/utils/CMakeFiles/utils.dir/Timestamp.cpp.o.requires

src/utils/CMakeFiles/utils.dir/Timestamp.cpp.o.provides: src/utils/CMakeFiles/utils.dir/Timestamp.cpp.o.requires
	$(MAKE) -f src/utils/CMakeFiles/utils.dir/build.make src/utils/CMakeFiles/utils.dir/Timestamp.cpp.o.provides.build
.PHONY : src/utils/CMakeFiles/utils.dir/Timestamp.cpp.o.provides

src/utils/CMakeFiles/utils.dir/Timestamp.cpp.o.provides.build: src/utils/CMakeFiles/utils.dir/Timestamp.cpp.o

src/utils/CMakeFiles/utils.dir/Condition.cpp.o: src/utils/CMakeFiles/utils.dir/flags.make
src/utils/CMakeFiles/utils.dir/Condition.cpp.o: ../../../../../utils/Condition.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/utils/CMakeFiles/utils.dir/Condition.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/Condition.cpp.o -c /home/kevin/workspace/dbdky_cac/src/utils/Condition.cpp

src/utils/CMakeFiles/utils.dir/Condition.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/Condition.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kevin/workspace/dbdky_cac/src/utils/Condition.cpp > CMakeFiles/utils.dir/Condition.cpp.i

src/utils/CMakeFiles/utils.dir/Condition.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/Condition.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kevin/workspace/dbdky_cac/src/utils/Condition.cpp -o CMakeFiles/utils.dir/Condition.cpp.s

src/utils/CMakeFiles/utils.dir/Condition.cpp.o.requires:
.PHONY : src/utils/CMakeFiles/utils.dir/Condition.cpp.o.requires

src/utils/CMakeFiles/utils.dir/Condition.cpp.o.provides: src/utils/CMakeFiles/utils.dir/Condition.cpp.o.requires
	$(MAKE) -f src/utils/CMakeFiles/utils.dir/build.make src/utils/CMakeFiles/utils.dir/Condition.cpp.o.provides.build
.PHONY : src/utils/CMakeFiles/utils.dir/Condition.cpp.o.provides

src/utils/CMakeFiles/utils.dir/Condition.cpp.o.provides.build: src/utils/CMakeFiles/utils.dir/Condition.cpp.o

src/utils/CMakeFiles/utils.dir/Logging.cpp.o: src/utils/CMakeFiles/utils.dir/flags.make
src/utils/CMakeFiles/utils.dir/Logging.cpp.o: ../../../../../utils/Logging.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/utils/CMakeFiles/utils.dir/Logging.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/Logging.cpp.o -c /home/kevin/workspace/dbdky_cac/src/utils/Logging.cpp

src/utils/CMakeFiles/utils.dir/Logging.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/Logging.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kevin/workspace/dbdky_cac/src/utils/Logging.cpp > CMakeFiles/utils.dir/Logging.cpp.i

src/utils/CMakeFiles/utils.dir/Logging.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/Logging.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kevin/workspace/dbdky_cac/src/utils/Logging.cpp -o CMakeFiles/utils.dir/Logging.cpp.s

src/utils/CMakeFiles/utils.dir/Logging.cpp.o.requires:
.PHONY : src/utils/CMakeFiles/utils.dir/Logging.cpp.o.requires

src/utils/CMakeFiles/utils.dir/Logging.cpp.o.provides: src/utils/CMakeFiles/utils.dir/Logging.cpp.o.requires
	$(MAKE) -f src/utils/CMakeFiles/utils.dir/build.make src/utils/CMakeFiles/utils.dir/Logging.cpp.o.provides.build
.PHONY : src/utils/CMakeFiles/utils.dir/Logging.cpp.o.provides

src/utils/CMakeFiles/utils.dir/Logging.cpp.o.provides.build: src/utils/CMakeFiles/utils.dir/Logging.cpp.o

src/utils/CMakeFiles/utils.dir/ProcessInfo.cpp.o: src/utils/CMakeFiles/utils.dir/flags.make
src/utils/CMakeFiles/utils.dir/ProcessInfo.cpp.o: ../../../../../utils/ProcessInfo.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/utils/CMakeFiles/utils.dir/ProcessInfo.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/ProcessInfo.cpp.o -c /home/kevin/workspace/dbdky_cac/src/utils/ProcessInfo.cpp

src/utils/CMakeFiles/utils.dir/ProcessInfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/ProcessInfo.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kevin/workspace/dbdky_cac/src/utils/ProcessInfo.cpp > CMakeFiles/utils.dir/ProcessInfo.cpp.i

src/utils/CMakeFiles/utils.dir/ProcessInfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/ProcessInfo.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kevin/workspace/dbdky_cac/src/utils/ProcessInfo.cpp -o CMakeFiles/utils.dir/ProcessInfo.cpp.s

src/utils/CMakeFiles/utils.dir/ProcessInfo.cpp.o.requires:
.PHONY : src/utils/CMakeFiles/utils.dir/ProcessInfo.cpp.o.requires

src/utils/CMakeFiles/utils.dir/ProcessInfo.cpp.o.provides: src/utils/CMakeFiles/utils.dir/ProcessInfo.cpp.o.requires
	$(MAKE) -f src/utils/CMakeFiles/utils.dir/build.make src/utils/CMakeFiles/utils.dir/ProcessInfo.cpp.o.provides.build
.PHONY : src/utils/CMakeFiles/utils.dir/ProcessInfo.cpp.o.provides

src/utils/CMakeFiles/utils.dir/ProcessInfo.cpp.o.provides.build: src/utils/CMakeFiles/utils.dir/ProcessInfo.cpp.o

src/utils/CMakeFiles/utils.dir/LogFile.cpp.o: src/utils/CMakeFiles/utils.dir/flags.make
src/utils/CMakeFiles/utils.dir/LogFile.cpp.o: ../../../../../utils/LogFile.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/utils/CMakeFiles/utils.dir/LogFile.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/LogFile.cpp.o -c /home/kevin/workspace/dbdky_cac/src/utils/LogFile.cpp

src/utils/CMakeFiles/utils.dir/LogFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/LogFile.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kevin/workspace/dbdky_cac/src/utils/LogFile.cpp > CMakeFiles/utils.dir/LogFile.cpp.i

src/utils/CMakeFiles/utils.dir/LogFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/LogFile.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kevin/workspace/dbdky_cac/src/utils/LogFile.cpp -o CMakeFiles/utils.dir/LogFile.cpp.s

src/utils/CMakeFiles/utils.dir/LogFile.cpp.o.requires:
.PHONY : src/utils/CMakeFiles/utils.dir/LogFile.cpp.o.requires

src/utils/CMakeFiles/utils.dir/LogFile.cpp.o.provides: src/utils/CMakeFiles/utils.dir/LogFile.cpp.o.requires
	$(MAKE) -f src/utils/CMakeFiles/utils.dir/build.make src/utils/CMakeFiles/utils.dir/LogFile.cpp.o.provides.build
.PHONY : src/utils/CMakeFiles/utils.dir/LogFile.cpp.o.provides

src/utils/CMakeFiles/utils.dir/LogFile.cpp.o.provides.build: src/utils/CMakeFiles/utils.dir/LogFile.cpp.o

src/utils/CMakeFiles/utils.dir/Thread.cpp.o: src/utils/CMakeFiles/utils.dir/flags.make
src/utils/CMakeFiles/utils.dir/Thread.cpp.o: ../../../../../utils/Thread.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/utils/CMakeFiles/utils.dir/Thread.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/Thread.cpp.o -c /home/kevin/workspace/dbdky_cac/src/utils/Thread.cpp

src/utils/CMakeFiles/utils.dir/Thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/Thread.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kevin/workspace/dbdky_cac/src/utils/Thread.cpp > CMakeFiles/utils.dir/Thread.cpp.i

src/utils/CMakeFiles/utils.dir/Thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/Thread.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kevin/workspace/dbdky_cac/src/utils/Thread.cpp -o CMakeFiles/utils.dir/Thread.cpp.s

src/utils/CMakeFiles/utils.dir/Thread.cpp.o.requires:
.PHONY : src/utils/CMakeFiles/utils.dir/Thread.cpp.o.requires

src/utils/CMakeFiles/utils.dir/Thread.cpp.o.provides: src/utils/CMakeFiles/utils.dir/Thread.cpp.o.requires
	$(MAKE) -f src/utils/CMakeFiles/utils.dir/build.make src/utils/CMakeFiles/utils.dir/Thread.cpp.o.provides.build
.PHONY : src/utils/CMakeFiles/utils.dir/Thread.cpp.o.provides

src/utils/CMakeFiles/utils.dir/Thread.cpp.o.provides.build: src/utils/CMakeFiles/utils.dir/Thread.cpp.o

src/utils/CMakeFiles/utils.dir/Exception.cpp.o: src/utils/CMakeFiles/utils.dir/flags.make
src/utils/CMakeFiles/utils.dir/Exception.cpp.o: ../../../../../utils/Exception.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/utils/CMakeFiles/utils.dir/Exception.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/Exception.cpp.o -c /home/kevin/workspace/dbdky_cac/src/utils/Exception.cpp

src/utils/CMakeFiles/utils.dir/Exception.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/Exception.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kevin/workspace/dbdky_cac/src/utils/Exception.cpp > CMakeFiles/utils.dir/Exception.cpp.i

src/utils/CMakeFiles/utils.dir/Exception.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/Exception.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kevin/workspace/dbdky_cac/src/utils/Exception.cpp -o CMakeFiles/utils.dir/Exception.cpp.s

src/utils/CMakeFiles/utils.dir/Exception.cpp.o.requires:
.PHONY : src/utils/CMakeFiles/utils.dir/Exception.cpp.o.requires

src/utils/CMakeFiles/utils.dir/Exception.cpp.o.provides: src/utils/CMakeFiles/utils.dir/Exception.cpp.o.requires
	$(MAKE) -f src/utils/CMakeFiles/utils.dir/build.make src/utils/CMakeFiles/utils.dir/Exception.cpp.o.provides.build
.PHONY : src/utils/CMakeFiles/utils.dir/Exception.cpp.o.provides

src/utils/CMakeFiles/utils.dir/Exception.cpp.o.provides.build: src/utils/CMakeFiles/utils.dir/Exception.cpp.o

src/utils/CMakeFiles/utils.dir/ThreadPool.cpp.o: src/utils/CMakeFiles/utils.dir/flags.make
src/utils/CMakeFiles/utils.dir/ThreadPool.cpp.o: ../../../../../utils/ThreadPool.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/utils/CMakeFiles/utils.dir/ThreadPool.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/ThreadPool.cpp.o -c /home/kevin/workspace/dbdky_cac/src/utils/ThreadPool.cpp

src/utils/CMakeFiles/utils.dir/ThreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/ThreadPool.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kevin/workspace/dbdky_cac/src/utils/ThreadPool.cpp > CMakeFiles/utils.dir/ThreadPool.cpp.i

src/utils/CMakeFiles/utils.dir/ThreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/ThreadPool.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kevin/workspace/dbdky_cac/src/utils/ThreadPool.cpp -o CMakeFiles/utils.dir/ThreadPool.cpp.s

src/utils/CMakeFiles/utils.dir/ThreadPool.cpp.o.requires:
.PHONY : src/utils/CMakeFiles/utils.dir/ThreadPool.cpp.o.requires

src/utils/CMakeFiles/utils.dir/ThreadPool.cpp.o.provides: src/utils/CMakeFiles/utils.dir/ThreadPool.cpp.o.requires
	$(MAKE) -f src/utils/CMakeFiles/utils.dir/build.make src/utils/CMakeFiles/utils.dir/ThreadPool.cpp.o.provides.build
.PHONY : src/utils/CMakeFiles/utils.dir/ThreadPool.cpp.o.provides

src/utils/CMakeFiles/utils.dir/ThreadPool.cpp.o.provides.build: src/utils/CMakeFiles/utils.dir/ThreadPool.cpp.o

src/utils/CMakeFiles/utils.dir/CountDownLatch.cpp.o: src/utils/CMakeFiles/utils.dir/flags.make
src/utils/CMakeFiles/utils.dir/CountDownLatch.cpp.o: ../../../../../utils/CountDownLatch.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/utils/CMakeFiles/utils.dir/CountDownLatch.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/CountDownLatch.cpp.o -c /home/kevin/workspace/dbdky_cac/src/utils/CountDownLatch.cpp

src/utils/CMakeFiles/utils.dir/CountDownLatch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/CountDownLatch.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kevin/workspace/dbdky_cac/src/utils/CountDownLatch.cpp > CMakeFiles/utils.dir/CountDownLatch.cpp.i

src/utils/CMakeFiles/utils.dir/CountDownLatch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/CountDownLatch.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kevin/workspace/dbdky_cac/src/utils/CountDownLatch.cpp -o CMakeFiles/utils.dir/CountDownLatch.cpp.s

src/utils/CMakeFiles/utils.dir/CountDownLatch.cpp.o.requires:
.PHONY : src/utils/CMakeFiles/utils.dir/CountDownLatch.cpp.o.requires

src/utils/CMakeFiles/utils.dir/CountDownLatch.cpp.o.provides: src/utils/CMakeFiles/utils.dir/CountDownLatch.cpp.o.requires
	$(MAKE) -f src/utils/CMakeFiles/utils.dir/build.make src/utils/CMakeFiles/utils.dir/CountDownLatch.cpp.o.provides.build
.PHONY : src/utils/CMakeFiles/utils.dir/CountDownLatch.cpp.o.provides

src/utils/CMakeFiles/utils.dir/CountDownLatch.cpp.o.provides.build: src/utils/CMakeFiles/utils.dir/CountDownLatch.cpp.o

src/utils/CMakeFiles/utils.dir/AsyncLogging.cpp.o: src/utils/CMakeFiles/utils.dir/flags.make
src/utils/CMakeFiles/utils.dir/AsyncLogging.cpp.o: ../../../../../utils/AsyncLogging.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/CMakeFiles $(CMAKE_PROGRESS_14)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/utils/CMakeFiles/utils.dir/AsyncLogging.cpp.o"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/AsyncLogging.cpp.o -c /home/kevin/workspace/dbdky_cac/src/utils/AsyncLogging.cpp

src/utils/CMakeFiles/utils.dir/AsyncLogging.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/AsyncLogging.cpp.i"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kevin/workspace/dbdky_cac/src/utils/AsyncLogging.cpp > CMakeFiles/utils.dir/AsyncLogging.cpp.i

src/utils/CMakeFiles/utils.dir/AsyncLogging.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/AsyncLogging.cpp.s"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kevin/workspace/dbdky_cac/src/utils/AsyncLogging.cpp -o CMakeFiles/utils.dir/AsyncLogging.cpp.s

src/utils/CMakeFiles/utils.dir/AsyncLogging.cpp.o.requires:
.PHONY : src/utils/CMakeFiles/utils.dir/AsyncLogging.cpp.o.requires

src/utils/CMakeFiles/utils.dir/AsyncLogging.cpp.o.provides: src/utils/CMakeFiles/utils.dir/AsyncLogging.cpp.o.requires
	$(MAKE) -f src/utils/CMakeFiles/utils.dir/build.make src/utils/CMakeFiles/utils.dir/AsyncLogging.cpp.o.provides.build
.PHONY : src/utils/CMakeFiles/utils.dir/AsyncLogging.cpp.o.provides

src/utils/CMakeFiles/utils.dir/AsyncLogging.cpp.o.provides.build: src/utils/CMakeFiles/utils.dir/AsyncLogging.cpp.o

# Object files for target utils
utils_OBJECTS = \
"CMakeFiles/utils.dir/FileUtil.cpp.o" \
"CMakeFiles/utils.dir/TimeZone.cpp.o" \
"CMakeFiles/utils.dir/Date.cpp.o" \
"CMakeFiles/utils.dir/LogStream.cpp.o" \
"CMakeFiles/utils.dir/Timestamp.cpp.o" \
"CMakeFiles/utils.dir/Condition.cpp.o" \
"CMakeFiles/utils.dir/Logging.cpp.o" \
"CMakeFiles/utils.dir/ProcessInfo.cpp.o" \
"CMakeFiles/utils.dir/LogFile.cpp.o" \
"CMakeFiles/utils.dir/Thread.cpp.o" \
"CMakeFiles/utils.dir/Exception.cpp.o" \
"CMakeFiles/utils.dir/ThreadPool.cpp.o" \
"CMakeFiles/utils.dir/CountDownLatch.cpp.o" \
"CMakeFiles/utils.dir/AsyncLogging.cpp.o"

# External object files for target utils
utils_EXTERNAL_OBJECTS =

lib/libutils.a: src/utils/CMakeFiles/utils.dir/FileUtil.cpp.o
lib/libutils.a: src/utils/CMakeFiles/utils.dir/TimeZone.cpp.o
lib/libutils.a: src/utils/CMakeFiles/utils.dir/Date.cpp.o
lib/libutils.a: src/utils/CMakeFiles/utils.dir/LogStream.cpp.o
lib/libutils.a: src/utils/CMakeFiles/utils.dir/Timestamp.cpp.o
lib/libutils.a: src/utils/CMakeFiles/utils.dir/Condition.cpp.o
lib/libutils.a: src/utils/CMakeFiles/utils.dir/Logging.cpp.o
lib/libutils.a: src/utils/CMakeFiles/utils.dir/ProcessInfo.cpp.o
lib/libutils.a: src/utils/CMakeFiles/utils.dir/LogFile.cpp.o
lib/libutils.a: src/utils/CMakeFiles/utils.dir/Thread.cpp.o
lib/libutils.a: src/utils/CMakeFiles/utils.dir/Exception.cpp.o
lib/libutils.a: src/utils/CMakeFiles/utils.dir/ThreadPool.cpp.o
lib/libutils.a: src/utils/CMakeFiles/utils.dir/CountDownLatch.cpp.o
lib/libutils.a: src/utils/CMakeFiles/utils.dir/AsyncLogging.cpp.o
lib/libutils.a: src/utils/CMakeFiles/utils.dir/build.make
lib/libutils.a: src/utils/CMakeFiles/utils.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library ../../lib/libutils.a"
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && $(CMAKE_COMMAND) -P CMakeFiles/utils.dir/cmake_clean_target.cmake
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/utils.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/utils/CMakeFiles/utils.dir/build: lib/libutils.a
.PHONY : src/utils/CMakeFiles/utils.dir/build

src/utils/CMakeFiles/utils.dir/requires: src/utils/CMakeFiles/utils.dir/FileUtil.cpp.o.requires
src/utils/CMakeFiles/utils.dir/requires: src/utils/CMakeFiles/utils.dir/TimeZone.cpp.o.requires
src/utils/CMakeFiles/utils.dir/requires: src/utils/CMakeFiles/utils.dir/Date.cpp.o.requires
src/utils/CMakeFiles/utils.dir/requires: src/utils/CMakeFiles/utils.dir/LogStream.cpp.o.requires
src/utils/CMakeFiles/utils.dir/requires: src/utils/CMakeFiles/utils.dir/Timestamp.cpp.o.requires
src/utils/CMakeFiles/utils.dir/requires: src/utils/CMakeFiles/utils.dir/Condition.cpp.o.requires
src/utils/CMakeFiles/utils.dir/requires: src/utils/CMakeFiles/utils.dir/Logging.cpp.o.requires
src/utils/CMakeFiles/utils.dir/requires: src/utils/CMakeFiles/utils.dir/ProcessInfo.cpp.o.requires
src/utils/CMakeFiles/utils.dir/requires: src/utils/CMakeFiles/utils.dir/LogFile.cpp.o.requires
src/utils/CMakeFiles/utils.dir/requires: src/utils/CMakeFiles/utils.dir/Thread.cpp.o.requires
src/utils/CMakeFiles/utils.dir/requires: src/utils/CMakeFiles/utils.dir/Exception.cpp.o.requires
src/utils/CMakeFiles/utils.dir/requires: src/utils/CMakeFiles/utils.dir/ThreadPool.cpp.o.requires
src/utils/CMakeFiles/utils.dir/requires: src/utils/CMakeFiles/utils.dir/CountDownLatch.cpp.o.requires
src/utils/CMakeFiles/utils.dir/requires: src/utils/CMakeFiles/utils.dir/AsyncLogging.cpp.o.requires
.PHONY : src/utils/CMakeFiles/utils.dir/requires

src/utils/CMakeFiles/utils.dir/clean:
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils && $(CMAKE_COMMAND) -P CMakeFiles/utils.dir/cmake_clean.cmake
.PHONY : src/utils/CMakeFiles/utils.dir/clean

src/utils/CMakeFiles/utils.dir/depend:
	cd /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kevin/workspace/dbdky_cac /home/kevin/workspace/dbdky_cac/src/utils /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils /home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/src/utils/CMakeFiles/utils.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/utils/CMakeFiles/utils.dir/depend

