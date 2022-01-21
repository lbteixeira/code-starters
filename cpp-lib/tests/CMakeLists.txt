set(TESTS_PROJECT_NAME "${CMAKE_PROJECT_NAME}-tests")
set(INCLUDE_DIR ../src)

# Add an executable to the project using the tests' source files.
add_executable(
  ${TESTS_PROJECT_NAME}
  main.cpp
  test-1.cpp
  test-2.cpp)

# Link the project's library to the tests' executable
target_include_directories(${TESTS_PROJECT_NAME} PUBLIC ${INCLUDE_DIR})
find_library(libproject_name NAMES libproject_name.a PATHS ../build/debug/src/)
target_link_libraries(${TESTS_PROJECT_NAME} PRIVATE ${libproject_name})
