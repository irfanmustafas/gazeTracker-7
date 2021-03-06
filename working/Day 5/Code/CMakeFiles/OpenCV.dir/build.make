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
CMAKE_SOURCE_DIR = /home/atom/Code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/atom/Code

# Include any dependencies generated for this target.
include CMakeFiles/OpenCV.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenCV.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenCV.dir/flags.make

CMakeFiles/OpenCV.dir/OpenCV.cpp.o: CMakeFiles/OpenCV.dir/flags.make
CMakeFiles/OpenCV.dir/OpenCV.cpp.o: OpenCV.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/atom/Code/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/OpenCV.dir/OpenCV.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/OpenCV.dir/OpenCV.cpp.o -c /home/atom/Code/OpenCV.cpp

CMakeFiles/OpenCV.dir/OpenCV.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenCV.dir/OpenCV.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/atom/Code/OpenCV.cpp > CMakeFiles/OpenCV.dir/OpenCV.cpp.i

CMakeFiles/OpenCV.dir/OpenCV.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenCV.dir/OpenCV.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/atom/Code/OpenCV.cpp -o CMakeFiles/OpenCV.dir/OpenCV.cpp.s

CMakeFiles/OpenCV.dir/OpenCV.cpp.o.requires:
.PHONY : CMakeFiles/OpenCV.dir/OpenCV.cpp.o.requires

CMakeFiles/OpenCV.dir/OpenCV.cpp.o.provides: CMakeFiles/OpenCV.dir/OpenCV.cpp.o.requires
	$(MAKE) -f CMakeFiles/OpenCV.dir/build.make CMakeFiles/OpenCV.dir/OpenCV.cpp.o.provides.build
.PHONY : CMakeFiles/OpenCV.dir/OpenCV.cpp.o.provides

CMakeFiles/OpenCV.dir/OpenCV.cpp.o.provides.build: CMakeFiles/OpenCV.dir/OpenCV.cpp.o

# Object files for target OpenCV
OpenCV_OBJECTS = \
"CMakeFiles/OpenCV.dir/OpenCV.cpp.o"

# External object files for target OpenCV
OpenCV_EXTERNAL_OBJECTS =

OpenCV: CMakeFiles/OpenCV.dir/OpenCV.cpp.o
OpenCV: CMakeFiles/OpenCV.dir/build.make
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_ts.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.9
OpenCV: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.9
OpenCV: CMakeFiles/OpenCV.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable OpenCV"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenCV.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenCV.dir/build: OpenCV
.PHONY : CMakeFiles/OpenCV.dir/build

CMakeFiles/OpenCV.dir/requires: CMakeFiles/OpenCV.dir/OpenCV.cpp.o.requires
.PHONY : CMakeFiles/OpenCV.dir/requires

CMakeFiles/OpenCV.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OpenCV.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OpenCV.dir/clean

CMakeFiles/OpenCV.dir/depend:
	cd /home/atom/Code && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/atom/Code /home/atom/Code /home/atom/Code /home/atom/Code /home/atom/Code/CMakeFiles/OpenCV.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OpenCV.dir/depend

