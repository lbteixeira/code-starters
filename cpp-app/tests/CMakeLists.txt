# Add an executable to the tests.

set(TESTS_PROJECT_NAME "${CMAKE_PROJECT_NAME}-tests")

add_executable(
  ${TESTS_PROJECT_NAME}
  main.cpp
  test-1.cpp
  test-2.cpp
)

target_link_libraries(${TESTS_PROJECT_NAME} PRIVATE lib1 ${CMAKE_PROJECT_NAME}_lib)
