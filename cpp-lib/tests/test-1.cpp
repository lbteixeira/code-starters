#include <catch2/catch.hpp>
#include "project_name/file1.hpp"

TEST_CASE("Test case 1", "[tag1]"){
  SECTION("First section"){
    int dummy = project_name::function2();
    REQUIRE(dummy == 111);
  }
}
