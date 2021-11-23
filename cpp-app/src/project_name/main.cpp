#include <iostream>

#include "lib1/namespace1/add.hpp"
#include "lib1/namespace2/subtract.hpp"
#include "lib2/hello.hpp"

int main()
{
  int i = 1;
  int j = 2;
  sayHello();

  std::cout << lib1::namespace1::add(i, j) << std::endl;
  std::cout << lib1::namespace2::subtract(i, j) << std::endl;

}
