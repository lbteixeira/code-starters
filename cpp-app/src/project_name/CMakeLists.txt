# Main executable
add_executable(
  ${CMAKE_PROJECT_NAME}
  main.cpp
  hello.cpp
)

target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE lib1 glfw)
target_compile_options(${CMAKE_PROJECT_NAME} PRIVATE -Werror -Wall -Wextra -pedantic-errors -Wconversion -Wsign-conversion)

# Library used for unit tests
add_library(
  ${CMAKE_PROJECT_NAME}_lib
  main.cpp
  hello.cpp
)

target_include_directories(${CMAKE_PROJECT_NAME}_lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(${CMAKE_PROJECT_NAME}_lib PRIVATE lib1 glfw)

