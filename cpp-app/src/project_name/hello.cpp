#include <string>
#include "hello.hpp"

namespace project_name {
  const std::string* sayHello(){
    std::string* msg = new std::string("LT code starters!");
    return msg;
  }
}
