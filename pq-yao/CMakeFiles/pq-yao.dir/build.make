# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/shf/OPRF-Garbled-Circuits/PQ-MPC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shf/OPRF-Garbled-Circuits/PQ-MPC

# Include any dependencies generated for this target.
include pq-yao/CMakeFiles/pq-yao.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include pq-yao/CMakeFiles/pq-yao.dir/compiler_depend.make

# Include the progress variables for this target.
include pq-yao/CMakeFiles/pq-yao.dir/progress.make

# Include the compile flags for this target's objects.
include pq-yao/CMakeFiles/pq-yao.dir/flags.make

pq-yao/CMakeFiles/pq-yao.dir/garble-gates.cpp.o: pq-yao/CMakeFiles/pq-yao.dir/flags.make
pq-yao/CMakeFiles/pq-yao.dir/garble-gates.cpp.o: pq-yao/garble-gates.cpp
pq-yao/CMakeFiles/pq-yao.dir/garble-gates.cpp.o: pq-yao/CMakeFiles/pq-yao.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shf/OPRF-Garbled-Circuits/PQ-MPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object pq-yao/CMakeFiles/pq-yao.dir/garble-gates.cpp.o"
	cd /home/shf/OPRF-Garbled-Circuits/PQ-MPC/pq-yao && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT pq-yao/CMakeFiles/pq-yao.dir/garble-gates.cpp.o -MF CMakeFiles/pq-yao.dir/garble-gates.cpp.o.d -o CMakeFiles/pq-yao.dir/garble-gates.cpp.o -c /home/shf/OPRF-Garbled-Circuits/PQ-MPC/pq-yao/garble-gates.cpp

pq-yao/CMakeFiles/pq-yao.dir/garble-gates.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pq-yao.dir/garble-gates.cpp.i"
	cd /home/shf/OPRF-Garbled-Circuits/PQ-MPC/pq-yao && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shf/OPRF-Garbled-Circuits/PQ-MPC/pq-yao/garble-gates.cpp > CMakeFiles/pq-yao.dir/garble-gates.cpp.i

pq-yao/CMakeFiles/pq-yao.dir/garble-gates.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pq-yao.dir/garble-gates.cpp.s"
	cd /home/shf/OPRF-Garbled-Circuits/PQ-MPC/pq-yao && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shf/OPRF-Garbled-Circuits/PQ-MPC/pq-yao/garble-gates.cpp -o CMakeFiles/pq-yao.dir/garble-gates.cpp.s

# Object files for target pq-yao
pq__yao_OBJECTS = \
"CMakeFiles/pq-yao.dir/garble-gates.cpp.o"

# External object files for target pq-yao
pq__yao_EXTERNAL_OBJECTS =

pq-yao/libpq-yao.a: pq-yao/CMakeFiles/pq-yao.dir/garble-gates.cpp.o
pq-yao/libpq-yao.a: pq-yao/CMakeFiles/pq-yao.dir/build.make
pq-yao/libpq-yao.a: pq-yao/CMakeFiles/pq-yao.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shf/OPRF-Garbled-Circuits/PQ-MPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libpq-yao.a"
	cd /home/shf/OPRF-Garbled-Circuits/PQ-MPC/pq-yao && $(CMAKE_COMMAND) -P CMakeFiles/pq-yao.dir/cmake_clean_target.cmake
	cd /home/shf/OPRF-Garbled-Circuits/PQ-MPC/pq-yao && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pq-yao.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pq-yao/CMakeFiles/pq-yao.dir/build: pq-yao/libpq-yao.a
.PHONY : pq-yao/CMakeFiles/pq-yao.dir/build

pq-yao/CMakeFiles/pq-yao.dir/clean:
	cd /home/shf/OPRF-Garbled-Circuits/PQ-MPC/pq-yao && $(CMAKE_COMMAND) -P CMakeFiles/pq-yao.dir/cmake_clean.cmake
.PHONY : pq-yao/CMakeFiles/pq-yao.dir/clean

pq-yao/CMakeFiles/pq-yao.dir/depend:
	cd /home/shf/OPRF-Garbled-Circuits/PQ-MPC && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shf/OPRF-Garbled-Circuits/PQ-MPC /home/shf/OPRF-Garbled-Circuits/PQ-MPC/pq-yao /home/shf/OPRF-Garbled-Circuits/PQ-MPC /home/shf/OPRF-Garbled-Circuits/PQ-MPC/pq-yao /home/shf/OPRF-Garbled-Circuits/PQ-MPC/pq-yao/CMakeFiles/pq-yao.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pq-yao/CMakeFiles/pq-yao.dir/depend
