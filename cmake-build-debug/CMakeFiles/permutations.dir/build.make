# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/chaosruler/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/173.3727.114/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/chaosruler/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/173.3727.114/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chaosruler/Desktop/permutations_in_cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chaosruler/Desktop/permutations_in_cpp/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/permutations.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/permutations.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/permutations.dir/flags.make

CMakeFiles/permutations.dir/main.cpp.o: CMakeFiles/permutations.dir/flags.make
CMakeFiles/permutations.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chaosruler/Desktop/permutations_in_cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/permutations.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/permutations.dir/main.cpp.o -c /home/chaosruler/Desktop/permutations_in_cpp/main.cpp

CMakeFiles/permutations.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/permutations.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chaosruler/Desktop/permutations_in_cpp/main.cpp > CMakeFiles/permutations.dir/main.cpp.i

CMakeFiles/permutations.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/permutations.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chaosruler/Desktop/permutations_in_cpp/main.cpp -o CMakeFiles/permutations.dir/main.cpp.s

CMakeFiles/permutations.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/permutations.dir/main.cpp.o.requires

CMakeFiles/permutations.dir/main.cpp.o.provides: CMakeFiles/permutations.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/permutations.dir/build.make CMakeFiles/permutations.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/permutations.dir/main.cpp.o.provides

CMakeFiles/permutations.dir/main.cpp.o.provides.build: CMakeFiles/permutations.dir/main.cpp.o


CMakeFiles/permutations.dir/permutation.cpp.o: CMakeFiles/permutations.dir/flags.make
CMakeFiles/permutations.dir/permutation.cpp.o: ../permutation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chaosruler/Desktop/permutations_in_cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/permutations.dir/permutation.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/permutations.dir/permutation.cpp.o -c /home/chaosruler/Desktop/permutations_in_cpp/permutation.cpp

CMakeFiles/permutations.dir/permutation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/permutations.dir/permutation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chaosruler/Desktop/permutations_in_cpp/permutation.cpp > CMakeFiles/permutations.dir/permutation.cpp.i

CMakeFiles/permutations.dir/permutation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/permutations.dir/permutation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chaosruler/Desktop/permutations_in_cpp/permutation.cpp -o CMakeFiles/permutations.dir/permutation.cpp.s

CMakeFiles/permutations.dir/permutation.cpp.o.requires:

.PHONY : CMakeFiles/permutations.dir/permutation.cpp.o.requires

CMakeFiles/permutations.dir/permutation.cpp.o.provides: CMakeFiles/permutations.dir/permutation.cpp.o.requires
	$(MAKE) -f CMakeFiles/permutations.dir/build.make CMakeFiles/permutations.dir/permutation.cpp.o.provides.build
.PHONY : CMakeFiles/permutations.dir/permutation.cpp.o.provides

CMakeFiles/permutations.dir/permutation.cpp.o.provides.build: CMakeFiles/permutations.dir/permutation.cpp.o


# Object files for target permutations
permutations_OBJECTS = \
"CMakeFiles/permutations.dir/main.cpp.o" \
"CMakeFiles/permutations.dir/permutation.cpp.o"

# External object files for target permutations
permutations_EXTERNAL_OBJECTS =

permutations: CMakeFiles/permutations.dir/main.cpp.o
permutations: CMakeFiles/permutations.dir/permutation.cpp.o
permutations: CMakeFiles/permutations.dir/build.make
permutations: CMakeFiles/permutations.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chaosruler/Desktop/permutations_in_cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable permutations"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/permutations.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/permutations.dir/build: permutations

.PHONY : CMakeFiles/permutations.dir/build

CMakeFiles/permutations.dir/requires: CMakeFiles/permutations.dir/main.cpp.o.requires
CMakeFiles/permutations.dir/requires: CMakeFiles/permutations.dir/permutation.cpp.o.requires

.PHONY : CMakeFiles/permutations.dir/requires

CMakeFiles/permutations.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/permutations.dir/cmake_clean.cmake
.PHONY : CMakeFiles/permutations.dir/clean

CMakeFiles/permutations.dir/depend:
	cd /home/chaosruler/Desktop/permutations_in_cpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chaosruler/Desktop/permutations_in_cpp /home/chaosruler/Desktop/permutations_in_cpp /home/chaosruler/Desktop/permutations_in_cpp/cmake-build-debug /home/chaosruler/Desktop/permutations_in_cpp/cmake-build-debug /home/chaosruler/Desktop/permutations_in_cpp/cmake-build-debug/CMakeFiles/permutations.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/permutations.dir/depend

