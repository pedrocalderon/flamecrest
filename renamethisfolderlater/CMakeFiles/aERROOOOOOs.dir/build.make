# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/renan/flamecrest/renamethisfolderlater

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/renan/flamecrest/renamethisfolderlater

# Include any dependencies generated for this target.
include CMakeFiles/aERROOOOOOs.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/aERROOOOOOs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/aERROOOOOOs.dir/flags.make

CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o: CMakeFiles/aERROOOOOOs.dir/flags.make
CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o: src/game/notasteroids.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/renan/flamecrest/renamethisfolderlater/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)  -g -Wall -ansi -O3 -U_FORTIFY_SOURCE  -DDEBUG -o CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o -c /home/renan/flamecrest/renamethisfolderlater/src/game/notasteroids.cc

CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -g -Wall -ansi -O3 -U_FORTIFY_SOURCE  -DDEBUG -E /home/renan/flamecrest/renamethisfolderlater/src/game/notasteroids.cc > CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.i

CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -g -Wall -ansi -O3 -U_FORTIFY_SOURCE  -DDEBUG -S /home/renan/flamecrest/renamethisfolderlater/src/game/notasteroids.cc -o CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.s

CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o.requires:
.PHONY : CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o.requires

CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o.provides: CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o.requires
	$(MAKE) -f CMakeFiles/aERROOOOOOs.dir/build.make CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o.provides.build
.PHONY : CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o.provides

CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o.provides.build: CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o
.PHONY : CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o.provides.build

# Object files for target aERROOOOOOs
aERROOOOOOs_OBJECTS = \
"CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o"

# External object files for target aERROOOOOOs
aERROOOOOOs_EXTERNAL_OBJECTS =

aERROOOOOOs: CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o
aERROOOOOOs: lib/libugdk_d.a
aERROOOOOOs: /usr/lib/libSDLmain.a
aERROOOOOOs: /usr/lib/libSDL.so
aERROOOOOOs: /usr/lib/libSDL_mixer.so
aERROOOOOOs: /usr/lib/libSDL_ttf.so
aERROOOOOOs: /usr/lib/libSDL_image.so
aERROOOOOOs: /usr/lib/libGLU.so
aERROOOOOOs: /usr/lib/libGL.so
aERROOOOOOs: /usr/lib/x86_64-linux-gnu/libSM.so
aERROOOOOOs: /usr/lib/x86_64-linux-gnu/libICE.so
aERROOOOOOs: /usr/lib/x86_64-linux-gnu/libX11.so
aERROOOOOOs: /usr/lib/x86_64-linux-gnu/libXext.so
aERROOOOOOs: CMakeFiles/aERROOOOOOs.dir/build.make
aERROOOOOOs: CMakeFiles/aERROOOOOOs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable aERROOOOOOs"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aERROOOOOOs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/aERROOOOOOs.dir/build: aERROOOOOOs
.PHONY : CMakeFiles/aERROOOOOOs.dir/build

CMakeFiles/aERROOOOOOs.dir/requires: CMakeFiles/aERROOOOOOs.dir/src/game/notasteroids.cc.o.requires
.PHONY : CMakeFiles/aERROOOOOOs.dir/requires

CMakeFiles/aERROOOOOOs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/aERROOOOOOs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/aERROOOOOOs.dir/clean

CMakeFiles/aERROOOOOOs.dir/depend:
	cd /home/renan/flamecrest/renamethisfolderlater && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/renan/flamecrest/renamethisfolderlater /home/renan/flamecrest/renamethisfolderlater /home/renan/flamecrest/renamethisfolderlater /home/renan/flamecrest/renamethisfolderlater /home/renan/flamecrest/renamethisfolderlater/CMakeFiles/aERROOOOOOs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/aERROOOOOOs.dir/depend

