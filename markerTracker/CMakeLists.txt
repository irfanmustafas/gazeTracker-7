cmake_minimum_required(VERSION 2.8)
project( markerdetect.cpp )
find_package( OpenCV REQUIRED )
include_directories(${OPENCV_INCLUDE_DIRS})
add_executable( markerdetect markerdetect.cpp )
target_link_libraries( markerdetect ${OpenCV_LIBS} )
