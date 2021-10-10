add_library(
  ${CMAKE_PROJECT_NAME}
  ${CMAKE_PROJECT_NAME}/namespace1/add.cpp
  ${CMAKE_PROJECT_NAME}/namespace2/subtract.cpp
  )

# ${CMAKE_CURRENT_SOURCE_DIR}: directory containing the current file
target_include_directories(${CMAKE_PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_options(${CMAKE_PROJECT_NAME} PRIVATE -Werror -Wall -Wextra -pedantic-errors -Wconversion -Wsign-conversion)
