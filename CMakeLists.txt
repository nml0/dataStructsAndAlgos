cmake_minimum_required(VERSION 3.10)
project(MyProject)

set(CMAKE_BUILD_TYPE Debug)

# Include directories for the project
include_directories(${CMAKE_SOURCE_DIR}/src)

# Add the source files to the executable
add_executable(my_program 
    src/sort.c 
    src/sortingFunctions.c 
    src/sortingUtils.c
)

# Set the output directory for the executable
set_target_properties(my_program PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build
)
