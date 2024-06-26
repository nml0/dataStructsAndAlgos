# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/nicolaslogioia/vscode/projects/DataStructsAndAlgos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/nicolaslogioia/vscode/projects/DataStructsAndAlgos

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake cache editor..."
	/opt/homebrew/Cellar/cmake/3.29.0/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/opt/homebrew/Cellar/cmake/3.29.0/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/nicolaslogioia/vscode/projects/DataStructsAndAlgos/CMakeFiles /Users/nicolaslogioia/vscode/projects/DataStructsAndAlgos//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/nicolaslogioia/vscode/projects/DataStructsAndAlgos/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named my_program

# Build rule for target.
my_program: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 my_program
.PHONY : my_program

# fast build rule for target.
my_program/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/my_program.dir/build.make CMakeFiles/my_program.dir/build
.PHONY : my_program/fast

src/sort.o: src/sort.c.o
.PHONY : src/sort.o

# target to build an object file
src/sort.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/my_program.dir/build.make CMakeFiles/my_program.dir/src/sort.c.o
.PHONY : src/sort.c.o

src/sort.i: src/sort.c.i
.PHONY : src/sort.i

# target to preprocess a source file
src/sort.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/my_program.dir/build.make CMakeFiles/my_program.dir/src/sort.c.i
.PHONY : src/sort.c.i

src/sort.s: src/sort.c.s
.PHONY : src/sort.s

# target to generate assembly for a file
src/sort.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/my_program.dir/build.make CMakeFiles/my_program.dir/src/sort.c.s
.PHONY : src/sort.c.s

src/sortingFunctions.o: src/sortingFunctions.c.o
.PHONY : src/sortingFunctions.o

# target to build an object file
src/sortingFunctions.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/my_program.dir/build.make CMakeFiles/my_program.dir/src/sortingFunctions.c.o
.PHONY : src/sortingFunctions.c.o

src/sortingFunctions.i: src/sortingFunctions.c.i
.PHONY : src/sortingFunctions.i

# target to preprocess a source file
src/sortingFunctions.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/my_program.dir/build.make CMakeFiles/my_program.dir/src/sortingFunctions.c.i
.PHONY : src/sortingFunctions.c.i

src/sortingFunctions.s: src/sortingFunctions.c.s
.PHONY : src/sortingFunctions.s

# target to generate assembly for a file
src/sortingFunctions.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/my_program.dir/build.make CMakeFiles/my_program.dir/src/sortingFunctions.c.s
.PHONY : src/sortingFunctions.c.s

src/sortingUtils.o: src/sortingUtils.c.o
.PHONY : src/sortingUtils.o

# target to build an object file
src/sortingUtils.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/my_program.dir/build.make CMakeFiles/my_program.dir/src/sortingUtils.c.o
.PHONY : src/sortingUtils.c.o

src/sortingUtils.i: src/sortingUtils.c.i
.PHONY : src/sortingUtils.i

# target to preprocess a source file
src/sortingUtils.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/my_program.dir/build.make CMakeFiles/my_program.dir/src/sortingUtils.c.i
.PHONY : src/sortingUtils.c.i

src/sortingUtils.s: src/sortingUtils.c.s
.PHONY : src/sortingUtils.s

# target to generate assembly for a file
src/sortingUtils.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/my_program.dir/build.make CMakeFiles/my_program.dir/src/sortingUtils.c.s
.PHONY : src/sortingUtils.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... my_program"
	@echo "... src/sort.o"
	@echo "... src/sort.i"
	@echo "... src/sort.s"
	@echo "... src/sortingFunctions.o"
	@echo "... src/sortingFunctions.i"
	@echo "... src/sortingFunctions.s"
	@echo "... src/sortingUtils.o"
	@echo "... src/sortingUtils.i"
	@echo "... src/sortingUtils.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

