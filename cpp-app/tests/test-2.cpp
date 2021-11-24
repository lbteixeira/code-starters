#include <catch2/catch.hpp>
#include <string>
#include "hello.hpp"

TEST_CASE("Test case 2", "[tag2]"){
  SECTION("First section"){
    REQUIRE(project_name::sayHello()->compare("LT code starters!") == 0);
  }
}

