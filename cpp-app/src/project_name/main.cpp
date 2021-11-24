#include <iostream>

#include "lib1/namespace1/add.hpp"
#include "lib1/namespace2/subtract.hpp"
#include "hello.hpp"
#include <GLFW/glfw3.h>
#include <string>

int main()
{
  int i = 1;
  int j = 2;
  const std::string* k;
  k = project_name::sayHello();

  std::cout << *k << std::endl;
  std::cout << lib1::namespace1::add(i, j) << std::endl;
  std::cout << lib1::namespace2::subtract(i, j) << std::endl;

  GLFWwindow* window;

  if( !glfwInit() )
  {
      fprintf( stderr, "Failed to initialize GLFW\n" );
      exit( EXIT_FAILURE );
  }

  window = glfwCreateWindow( 300, 300, "LT Code Starters", NULL, NULL );

  if (!window)
  {
      fprintf( stderr, "Failed to open GLFW window\n" );
      glfwTerminate();
      exit( EXIT_FAILURE );
  }

  while( !glfwWindowShouldClose(window) )
  {
      glfwSwapBuffers(window);
      glfwPollEvents();
  }

  glfwTerminate();
}
