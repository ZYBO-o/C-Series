# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/zhangyongbin/Desktop/Github Projects/C++ Series/C++ Primer/Codes"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/zhangyongbin/Desktop/Github Projects/C++ Series/C++ Primer/Codes/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Codes.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Codes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Codes.dir/flags.make

CMakeFiles/Codes.dir/main.cpp.o: CMakeFiles/Codes.dir/flags.make
CMakeFiles/Codes.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/zhangyongbin/Desktop/Github Projects/C++ Series/C++ Primer/Codes/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Codes.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Codes.dir/main.cpp.o -c "/Users/zhangyongbin/Desktop/Github Projects/C++ Series/C++ Primer/Codes/main.cpp"

CMakeFiles/Codes.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Codes.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/zhangyongbin/Desktop/Github Projects/C++ Series/C++ Primer/Codes/main.cpp" > CMakeFiles/Codes.dir/main.cpp.i

CMakeFiles/Codes.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Codes.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/zhangyongbin/Desktop/Github Projects/C++ Series/C++ Primer/Codes/main.cpp" -o CMakeFiles/Codes.dir/main.cpp.s

# Object files for target Codes
Codes_OBJECTS = \
"CMakeFiles/Codes.dir/main.cpp.o"

# External object files for target Codes
Codes_EXTERNAL_OBJECTS =

Codes: CMakeFiles/Codes.dir/main.cpp.o
Codes: CMakeFiles/Codes.dir/build.make
Codes: CMakeFiles/Codes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/zhangyongbin/Desktop/Github Projects/C++ Series/C++ Primer/Codes/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Codes"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Codes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Codes.dir/build: Codes

.PHONY : CMakeFiles/Codes.dir/build

CMakeFiles/Codes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Codes.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Codes.dir/clean

CMakeFiles/Codes.dir/depend:
	cd "/Users/zhangyongbin/Desktop/Github Projects/C++ Series/C++ Primer/Codes/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/zhangyongbin/Desktop/Github Projects/C++ Series/C++ Primer/Codes" "/Users/zhangyongbin/Desktop/Github Projects/C++ Series/C++ Primer/Codes" "/Users/zhangyongbin/Desktop/Github Projects/C++ Series/C++ Primer/Codes/cmake-build-debug" "/Users/zhangyongbin/Desktop/Github Projects/C++ Series/C++ Primer/Codes/cmake-build-debug" "/Users/zhangyongbin/Desktop/Github Projects/C++ Series/C++ Primer/Codes/cmake-build-debug/CMakeFiles/Codes.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Codes.dir/depend
