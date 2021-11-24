add_executable(
  ${CMAKE_PROJECT_NAME}
  main.cpp)

target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE lib1 lib2 glfw)
target_compile_options(${CMAKE_PROJECT_NAME} PRIVATE -Werror -Wall -Wextra -pedantic-errors -Wconversion -Wsign-conversion)

