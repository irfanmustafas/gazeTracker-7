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

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/manasi/gazeTracker/markerTracker

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/manasi/gazeTracker/markerTracker/build

# Include any dependencies generated for this target.
include CMakeFiles/markerdetect.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/markerdetect.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/markerdetect.dir/flags.make

CMakeFiles/markerdetect.dir/markerdetect.cpp.o: CMakeFiles/markerdetect.dir/flags.make
CMakeFiles/markerdetect.dir/markerdetect.cpp.o: ../markerdetect.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/manasi/gazeTracker/markerTracker/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/markerdetect.dir/markerdetect.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/markerdetect.dir/markerdetect.cpp.o -c /home/manasi/gazeTracker/markerTracker/markerdetect.cpp

CMakeFiles/markerdetect.dir/markerdetect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/markerdetect.dir/markerdetect.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/manasi/gazeTracker/markerTracker/markerdetect.cpp > CMakeFiles/markerdetect.dir/markerdetect.cpp.i

CMakeFiles/markerdetect.dir/markerdetect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/markerdetect.dir/markerdetect.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/manasi/gazeTracker/markerTracker/markerdetect.cpp -o CMakeFiles/markerdetect.dir/markerdetect.cpp.s

CMakeFiles/markerdetect.dir/markerdetect.cpp.o.requires:
.PHONY : CMakeFiles/markerdetect.dir/markerdetect.cpp.o.requires

CMakeFiles/markerdetect.dir/markerdetect.cpp.o.provides: CMakeFiles/markerdetect.dir/markerdetect.cpp.o.requires
	$(MAKE) -f CMakeFiles/markerdetect.dir/build.make CMakeFiles/markerdetect.dir/markerdetect.cpp.o.provides.build
.PHONY : CMakeFiles/markerdetect.dir/markerdetect.cpp.o.provides

CMakeFiles/markerdetect.dir/markerdetect.cpp.o.provides.build: CMakeFiles/markerdetect.dir/markerdetect.cpp.o

# Object files for target markerdetect
markerdetect_OBJECTS = \
"CMakeFiles/markerdetect.dir/markerdetect.cpp.o"

# External object files for target markerdetect
markerdetect_EXTERNAL_OBJECTS =

markerdetect: CMakeFiles/markerdetect.dir/markerdetect.cpp.o
markerdetect: CMakeFiles/markerdetect.dir/build.make
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_ts.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
markerdetect: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
markerdetect: CMakeFiles/markerdetect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable markerdetect"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/markerdetect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/markerdetect.dir/build: markerdetect
.PHONY : CMakeFiles/markerdetect.dir/build

CMakeFiles/markerdetect.dir/requires: CMakeFiles/markerdetect.dir/markerdetect.cpp.o.requires
.PHONY : CMakeFiles/markerdetect.dir/requires

CMakeFiles/markerdetect.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/markerdetect.dir/cmake_clean.cmake
.PHONY : CMakeFiles/markerdetect.dir/clean

CMakeFiles/markerdetect.dir/depend:
	cd /home/manasi/gazeTracker/markerTracker/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/manasi/gazeTracker/markerTracker /home/manasi/gazeTracker/markerTracker /home/manasi/gazeTracker/markerTracker/build /home/manasi/gazeTracker/markerTracker/build /home/manasi/gazeTracker/markerTracker/build/CMakeFiles/markerdetect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/markerdetect.dir/depend
