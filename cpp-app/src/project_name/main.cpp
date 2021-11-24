#include <iostream>

#include "lib1/namespace1/add.hpp"
#include "lib1/namespace2/subtract.hpp"
#include "lib2/hello.hpp"
#include <GLFW/glfw3.h>

int main()
{
  int i = 1;
  int j = 2;
  sayHello();

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
