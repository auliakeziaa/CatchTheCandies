# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/auliakeziaa/CatchTheCandies

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/auliakeziaa/CatchTheCandies/build

# Include any dependencies generated for this target.
include CMakeFiles/CatchTheCandies.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CatchTheCandies.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CatchTheCandies.dir/flags.make

CMakeFiles/CatchTheCandies.dir/try/main.cpp.o: CMakeFiles/CatchTheCandies.dir/flags.make
CMakeFiles/CatchTheCandies.dir/try/main.cpp.o: ../try/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/auliakeziaa/CatchTheCandies/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CatchTheCandies.dir/try/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CatchTheCandies.dir/try/main.cpp.o -c /home/auliakeziaa/CatchTheCandies/try/main.cpp

CMakeFiles/CatchTheCandies.dir/try/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CatchTheCandies.dir/try/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/auliakeziaa/CatchTheCandies/try/main.cpp > CMakeFiles/CatchTheCandies.dir/try/main.cpp.i

CMakeFiles/CatchTheCandies.dir/try/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CatchTheCandies.dir/try/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/auliakeziaa/CatchTheCandies/try/main.cpp -o CMakeFiles/CatchTheCandies.dir/try/main.cpp.s

CMakeFiles/CatchTheCandies.dir/try/catchthecandies.cpp.o: CMakeFiles/CatchTheCandies.dir/flags.make
CMakeFiles/CatchTheCandies.dir/try/catchthecandies.cpp.o: ../try/catchthecandies.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/auliakeziaa/CatchTheCandies/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CatchTheCandies.dir/try/catchthecandies.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CatchTheCandies.dir/try/catchthecandies.cpp.o -c /home/auliakeziaa/CatchTheCandies/try/catchthecandies.cpp

CMakeFiles/CatchTheCandies.dir/try/catchthecandies.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CatchTheCandies.dir/try/catchthecandies.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/auliakeziaa/CatchTheCandies/try/catchthecandies.cpp > CMakeFiles/CatchTheCandies.dir/try/catchthecandies.cpp.i

CMakeFiles/CatchTheCandies.dir/try/catchthecandies.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CatchTheCandies.dir/try/catchthecandies.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/auliakeziaa/CatchTheCandies/try/catchthecandies.cpp -o CMakeFiles/CatchTheCandies.dir/try/catchthecandies.cpp.s

# Object files for target CatchTheCandies
CatchTheCandies_OBJECTS = \
"CMakeFiles/CatchTheCandies.dir/try/main.cpp.o" \
"CMakeFiles/CatchTheCandies.dir/try/catchthecandies.cpp.o"

# External object files for target CatchTheCandies
CatchTheCandies_EXTERNAL_OBJECTS =

CatchTheCandies: CMakeFiles/CatchTheCandies.dir/try/main.cpp.o
CatchTheCandies: CMakeFiles/CatchTheCandies.dir/try/catchthecandies.cpp.o
CatchTheCandies: CMakeFiles/CatchTheCandies.dir/build.make
CatchTheCandies: /usr/local/lib/libopencv_gapi.so.4.10.0
CatchTheCandies: /usr/local/lib/libopencv_highgui.so.4.10.0
CatchTheCandies: /usr/local/lib/libopencv_ml.so.4.10.0
CatchTheCandies: /usr/local/lib/libopencv_objdetect.so.4.10.0
CatchTheCandies: /usr/local/lib/libopencv_photo.so.4.10.0
CatchTheCandies: /usr/local/lib/libopencv_stitching.so.4.10.0
CatchTheCandies: /usr/local/lib/libopencv_video.so.4.10.0
CatchTheCandies: /usr/local/lib/libopencv_videoio.so.4.10.0
CatchTheCandies: /usr/local/lib/libopencv_imgcodecs.so.4.10.0
CatchTheCandies: /usr/local/lib/libopencv_dnn.so.4.10.0
CatchTheCandies: /usr/local/lib/libopencv_calib3d.so.4.10.0
CatchTheCandies: /usr/local/lib/libopencv_features2d.so.4.10.0
CatchTheCandies: /usr/local/lib/libopencv_flann.so.4.10.0
CatchTheCandies: /usr/local/lib/libopencv_imgproc.so.4.10.0
CatchTheCandies: /usr/local/lib/libopencv_core.so.4.10.0
CatchTheCandies: CMakeFiles/CatchTheCandies.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/auliakeziaa/CatchTheCandies/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable CatchTheCandies"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CatchTheCandies.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CatchTheCandies.dir/build: CatchTheCandies

.PHONY : CMakeFiles/CatchTheCandies.dir/build

CMakeFiles/CatchTheCandies.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CatchTheCandies.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CatchTheCandies.dir/clean

CMakeFiles/CatchTheCandies.dir/depend:
	cd /home/auliakeziaa/CatchTheCandies/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/auliakeziaa/CatchTheCandies /home/auliakeziaa/CatchTheCandies /home/auliakeziaa/CatchTheCandies/build /home/auliakeziaa/CatchTheCandies/build /home/auliakeziaa/CatchTheCandies/build/CMakeFiles/CatchTheCandies.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CatchTheCandies.dir/depend

