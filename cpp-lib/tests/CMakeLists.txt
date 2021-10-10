# Add an executable to the project using the tests' source files.
add_executable(
  ${CMAKE_PROJECT_NAME}-tests
  main.cpp
  test-1.cpp
  test-2.cpp)

# Link the project's library to the tests' executable
target_link_libraries(${CMAKE_PROJECT_NAME}-tests PRIVATE ${CMAKE_PROJECT_NAME})
