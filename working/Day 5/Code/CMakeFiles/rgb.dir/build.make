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
include CMakeFiles/rgb.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rgb.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rgb.dir/flags.make

CMakeFiles/rgb.dir/rgb.cpp.o: CMakeFiles/rgb.dir/flags.make
CMakeFiles/rgb.dir/rgb.cpp.o: rgb.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/atom/Code/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/rgb.dir/rgb.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rgb.dir/rgb.cpp.o -c /home/atom/Code/rgb.cpp

CMakeFiles/rgb.dir/rgb.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rgb.dir/rgb.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/atom/Code/rgb.cpp > CMakeFiles/rgb.dir/rgb.cpp.i

CMakeFiles/rgb.dir/rgb.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rgb.dir/rgb.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/atom/Code/rgb.cpp -o CMakeFiles/rgb.dir/rgb.cpp.s

CMakeFiles/rgb.dir/rgb.cpp.o.requires:
.PHONY : CMakeFiles/rgb.dir/rgb.cpp.o.requires

CMakeFiles/rgb.dir/rgb.cpp.o.provides: CMakeFiles/rgb.dir/rgb.cpp.o.requires
	$(MAKE) -f CMakeFiles/rgb.dir/build.make CMakeFiles/rgb.dir/rgb.cpp.o.provides.build
.PHONY : CMakeFiles/rgb.dir/rgb.cpp.o.provides

CMakeFiles/rgb.dir/rgb.cpp.o.provides.build: CMakeFiles/rgb.dir/rgb.cpp.o

# Object files for target rgb
rgb_OBJECTS = \
"CMakeFiles/rgb.dir/rgb.cpp.o"

# External object files for target rgb
rgb_EXTERNAL_OBJECTS =

rgb: CMakeFiles/rgb.dir/rgb.cpp.o
rgb: CMakeFiles/rgb.dir/build.make
rgb: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_ts.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.9
rgb: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.9
rgb: CMakeFiles/rgb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable rgb"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rgb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rgb.dir/build: rgb
.PHONY : CMakeFiles/rgb.dir/build

CMakeFiles/rgb.dir/requires: CMakeFiles/rgb.dir/rgb.cpp.o.requires
.PHONY : CMakeFiles/rgb.dir/requires

CMakeFiles/rgb.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rgb.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rgb.dir/clean

CMakeFiles/rgb.dir/depend:
	cd /home/atom/Code && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/atom/Code /home/atom/Code /home/atom/Code /home/atom/Code /home/atom/Code/CMakeFiles/rgb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rgb.dir/depend

