cmake_minimum_required(VERSION 3.15)
project(facerec_ncnn)

set(CMAKE_CXX_STANDARD 14)

set(ncnn_DIR "/home/duongtt/tencent/ncnn/build/install/lib/cmake/ncnn")

find_package(ncnn REQUIRED)

find_package(OpenCV REQUIRED)

include_directories(./)

# file(GLOB HEAD ${CMAKE_CURRENT_SOURCE_DIR}/include/*.h)
# file(GLOB SRCS ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)

# target_include_directories( ./scrfd.cpp)

add_executable(${PROJECT_NAME} main.cpp ./scrfd.cpp)
target_link_libraries(${PROJECT_NAME} ncnn ${OpenCV_LIBS})