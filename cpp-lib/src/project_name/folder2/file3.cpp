// file3.hpp can be included directly, since it is in the same directory as the
// current file
#include "file3.hpp"
// file1.hpp and file2.hpp need to include the full path, relative to the
// public include directory
#include "project_name/file1.hpp"
#include "project_name/file2.hpp"
#include <iostream>

namespace project_name {
  // function5 can't be called by the consumers of the library, since its
  // declaration is in a private include folder.
  float function5(){
    float dummy;

    std::cout << "Printing something" << std::endl;

    // Calling functions from the public include directory
    project_name::function1();
    dummy = project_name::function4() + 0.1f;

    return dummy;

  }
}

