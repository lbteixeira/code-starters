# Cpp files to be compiled
set(CPP_FILES
      ${CMAKE_PROJECT_NAME}/folder1/file1.cpp
      ${CMAKE_PROJECT_NAME}/folder1/file2.cpp
      ${CMAKE_PROJECT_NAME}/folder2/file3.cpp
)

# Private include paths, for internal use only.
SET(INCLUDE_DIR_PRIVATE
      ${CMAKE_CURRENT_SOURCE_DIR}/${CMAKE_PROJECT_NAME}
)

# Extra compilation flags
set(EXTRA_COMP_FLAGS
      -Werror
      -Wall
      -Wextra
      -pedantic-errors
      -Wconversion
      -Wsign-conversion)

# Creates the library target
add_library(
  ${CMAKE_PROJECT_NAME}
  ${CPP_FILES}
)

# Public include paths, which can be used by the consumers of the library.
target_include_directories(${CMAKE_PROJECT_NAME} PUBLIC ../include/)

target_include_directories(${CMAKE_PROJECT_NAME} PRIVATE ${INCLUDE_DIR_PRIVATE})
target_compile_options(${CMAKE_PROJECT_NAME} PUBLIC ${EXTRA_COMP_FLAGS})
