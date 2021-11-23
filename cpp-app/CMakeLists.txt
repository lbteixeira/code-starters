cmake_minimum_required(VERSION 3.21.3)

# Project's name
project(project_name VERSION 0.0.1)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Variables to control the build process
option(PROJECT_BUILD_TESTS "Build the unit tests" OFF)
option(PROJECT_BUILD_EXAMPLES "Build the examples" OFF)

# Directories containing libraries
# Each directory has its own CMakeLists.txt file
add_subdirectory(src/libs/lib1)
add_subdirectory(src/libs/lib2)

# Directory containing the executable
add_subdirectory(src/project_name)

#Only build the tests if required
if(PROJECT_BUILD_TESTS)
  add_subdirectory(tests)
endif()

#Only build the examples if required
#Update this list as you include more examples
if(PROJECT_BUILD_EXAMPLES)
  add_subdirectory(examples/example1)
  add_subdirectory(examples/example2)
endif()

