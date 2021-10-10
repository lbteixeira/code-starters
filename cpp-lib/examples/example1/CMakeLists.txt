# Add an executable to the project using the tests' source files.
add_executable(
  example1
  main.cpp
  )

# Link the project's library to the tests' executable
target_link_libraries(example1 PRIVATE ${CMAKE_PROJECT_NAME})
