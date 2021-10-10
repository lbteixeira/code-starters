#include <iostream>

#include "project_name/namespace1/add.hpp"
#include "project_name/namespace2/subtract.hpp"

int main(){
  int i = 2;
  int j = 1;

  std::cout << "2 + 1 = " <<
    project_name::namespace1::add(i, j) << std::endl;
  std::cout << "2 - 1 = " <<
    project_name::namespace2::subtract(i, j) << std::endl;

  return 0;
}
