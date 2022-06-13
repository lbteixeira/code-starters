set(TESTS_PROJECT_NAME "${CMAKE_PROJECT_NAME}-tests")

# Add an executable to the project using the tests' source files.
add_executable(
  ${TESTS_PROJECT_NAME}
  main.cpp
  test-1.cpp
  test-2.cpp
)

# Link the project's library to the tests' executable
#find_library(libproject_name NAMES libproject_name.a PATHS ../build/debug/src/)
target_link_libraries(${TESTS_PROJECT_NAME} PRIVATE ${CMAKE_PROJECT_NAME})
#target_link_libraries(${TESTS_PROJECT_NAME} PUBLIC ${libproject_name})
