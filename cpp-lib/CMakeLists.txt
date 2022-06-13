cmake_minimum_required(VERSION 3.16.0)

# Project's name
project(project_name VERSION 0.0.1)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Variables to control the build process
option(PROJECT_BUILD_TESTS "Build the unit tests" OFF)
option(PROJECT_BUILD_EXAMPLES "Build the examples" OFF)

# Directories containing libraries and executables
# Each directory has its own CMakeLists.txt file
#if(NOT PROJECT_BUILD_TESTS)
  add_subdirectory(src)
#endif()

# Only builds the tests if required
if(PROJECT_BUILD_TESTS)
  add_subdirectory(tests)
endif()

# Only builds the examples if required
# Update this list as you include more examples
if(PROJECT_BUILD_EXAMPLES)
  add_subdirectory(examples/example1)
  add_subdirectory(examples/example2)
endif()

