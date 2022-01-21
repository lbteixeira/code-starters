set(CPP_FILES
      ${CMAKE_PROJECT_NAME}/namespace1/add.cpp
      ${CMAKE_PROJECT_NAME}/namespace2/subtract.cpp)

SET(INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR})

set(EXTRA_COMP_FLAGS
      -Werror
      -Wall
      -Wextra
      -pedantic-errors
      -Wconversion
      -Wsign-conversion)

add_library(
  ${CMAKE_PROJECT_NAME}
  ${CPP_FILES}
)

target_include_directories(${CMAKE_PROJECT_NAME} PUBLIC ${INCLUDE_DIR})
target_compile_options(${CMAKE_PROJECT_NAME} PUBLIC ${EXTRA_COMP_FLAGS})
