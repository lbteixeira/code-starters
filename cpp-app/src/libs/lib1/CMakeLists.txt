add_library(
  lib1
  lib1/namespace1/add.cpp
  lib1/namespace2/subtract.cpp
  )

# ${CMAKE_CURRENT_SOURCE_DIR}: directory containing the current file
target_include_directories(lib1 PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_options(lib1 PRIVATE -Werror -Wall -Wextra -pedantic-errors -Wconversion -Wsign-conversion)
