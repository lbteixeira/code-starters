add_library(
  lib2
  lib2/hello.cpp
  )

# ${CMAKE_CURRENT_SOURCE_DIR}: directory containing the current file
target_include_directories(lib2 PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_options(lib2 PRIVATE -Werror -Wall -Wextra -pedantic-errors -Wconversion -Wsign-conversion)
