# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/duongtt/workplace/face3d

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/duongtt/workplace/face3d/build

# Include any dependencies generated for this target.
include CMakeFiles/facerec_ncnn.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/facerec_ncnn.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/facerec_ncnn.dir/flags.make

CMakeFiles/facerec_ncnn.dir/main.cpp.o: CMakeFiles/facerec_ncnn.dir/flags.make
CMakeFiles/facerec_ncnn.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duongtt/workplace/face3d/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/facerec_ncnn.dir/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/facerec_ncnn.dir/main.cpp.o -c /home/duongtt/workplace/face3d/main.cpp

CMakeFiles/facerec_ncnn.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/facerec_ncnn.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/duongtt/workplace/face3d/main.cpp > CMakeFiles/facerec_ncnn.dir/main.cpp.i

CMakeFiles/facerec_ncnn.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/facerec_ncnn.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/duongtt/workplace/face3d/main.cpp -o CMakeFiles/facerec_ncnn.dir/main.cpp.s

CMakeFiles/facerec_ncnn.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/facerec_ncnn.dir/main.cpp.o.requires

CMakeFiles/facerec_ncnn.dir/main.cpp.o.provides: CMakeFiles/facerec_ncnn.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/facerec_ncnn.dir/build.make CMakeFiles/facerec_ncnn.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/facerec_ncnn.dir/main.cpp.o.provides

CMakeFiles/facerec_ncnn.dir/main.cpp.o.provides.build: CMakeFiles/facerec_ncnn.dir/main.cpp.o


CMakeFiles/facerec_ncnn.dir/scrfd.cpp.o: CMakeFiles/facerec_ncnn.dir/flags.make
CMakeFiles/facerec_ncnn.dir/scrfd.cpp.o: ../scrfd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duongtt/workplace/face3d/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/facerec_ncnn.dir/scrfd.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/facerec_ncnn.dir/scrfd.cpp.o -c /home/duongtt/workplace/face3d/scrfd.cpp

CMakeFiles/facerec_ncnn.dir/scrfd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/facerec_ncnn.dir/scrfd.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/duongtt/workplace/face3d/scrfd.cpp > CMakeFiles/facerec_ncnn.dir/scrfd.cpp.i

CMakeFiles/facerec_ncnn.dir/scrfd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/facerec_ncnn.dir/scrfd.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/duongtt/workplace/face3d/scrfd.cpp -o CMakeFiles/facerec_ncnn.dir/scrfd.cpp.s

CMakeFiles/facerec_ncnn.dir/scrfd.cpp.o.requires:

.PHONY : CMakeFiles/facerec_ncnn.dir/scrfd.cpp.o.requires

CMakeFiles/facerec_ncnn.dir/scrfd.cpp.o.provides: CMakeFiles/facerec_ncnn.dir/scrfd.cpp.o.requires
	$(MAKE) -f CMakeFiles/facerec_ncnn.dir/build.make CMakeFiles/facerec_ncnn.dir/scrfd.cpp.o.provides.build
.PHONY : CMakeFiles/facerec_ncnn.dir/scrfd.cpp.o.provides

CMakeFiles/facerec_ncnn.dir/scrfd.cpp.o.provides.build: CMakeFiles/facerec_ncnn.dir/scrfd.cpp.o


# Object files for target facerec_ncnn
facerec_ncnn_OBJECTS = \
"CMakeFiles/facerec_ncnn.dir/main.cpp.o" \
"CMakeFiles/facerec_ncnn.dir/scrfd.cpp.o"

# External object files for target facerec_ncnn
facerec_ncnn_EXTERNAL_OBJECTS =

facerec_ncnn: CMakeFiles/facerec_ncnn.dir/main.cpp.o
facerec_ncnn: CMakeFiles/facerec_ncnn.dir/scrfd.cpp.o
facerec_ncnn: CMakeFiles/facerec_ncnn.dir/build.make
facerec_ncnn: /home/duongtt/tencent/ncnn/build/install/lib/libncnn.a
facerec_ncnn: /usr/local/lib/libopencv_gapi.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_stitching.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_aruco.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_barcode.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_bgsegm.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_bioinspired.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_ccalib.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_dnn_objdetect.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_dnn_superres.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_dpm.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_face.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_freetype.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_fuzzy.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_hfs.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_img_hash.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_intensity_transform.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_line_descriptor.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_mcc.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_quality.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_rapid.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_reg.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_rgbd.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_saliency.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_stereo.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_structured_light.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_superres.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_surface_matching.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_tracking.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_videostab.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_wechat_qrcode.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_xfeatures2d.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_xobjdetect.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_xphoto.so.4.5.3
facerec_ncnn: /usr/lib/gcc/x86_64-linux-gnu/7/libgomp.so
facerec_ncnn: /usr/lib/x86_64-linux-gnu/libpthread.so
facerec_ncnn: /usr/local/lib/libopencv_shape.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_highgui.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_datasets.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_plot.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_text.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_ml.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_phase_unwrapping.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_optflow.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_ximgproc.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_video.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_videoio.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_dnn.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_imgcodecs.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_objdetect.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_calib3d.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_features2d.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_flann.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_photo.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_imgproc.so.4.5.3
facerec_ncnn: /usr/local/lib/libopencv_core.so.4.5.3
facerec_ncnn: CMakeFiles/facerec_ncnn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/duongtt/workplace/face3d/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable facerec_ncnn"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/facerec_ncnn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/facerec_ncnn.dir/build: facerec_ncnn

.PHONY : CMakeFiles/facerec_ncnn.dir/build

CMakeFiles/facerec_ncnn.dir/requires: CMakeFiles/facerec_ncnn.dir/main.cpp.o.requires
CMakeFiles/facerec_ncnn.dir/requires: CMakeFiles/facerec_ncnn.dir/scrfd.cpp.o.requires

.PHONY : CMakeFiles/facerec_ncnn.dir/requires

CMakeFiles/facerec_ncnn.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/facerec_ncnn.dir/cmake_clean.cmake
.PHONY : CMakeFiles/facerec_ncnn.dir/clean

CMakeFiles/facerec_ncnn.dir/depend:
	cd /home/duongtt/workplace/face3d/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/duongtt/workplace/face3d /home/duongtt/workplace/face3d /home/duongtt/workplace/face3d/build /home/duongtt/workplace/face3d/build /home/duongtt/workplace/face3d/build/CMakeFiles/facerec_ncnn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/facerec_ncnn.dir/depend
