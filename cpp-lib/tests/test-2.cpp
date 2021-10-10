#include <catch2/catch.hpp>
#include "project_name/namespace2/subtract.hpp"

TEST_CASE("Test case 2", "[tag2]"){
  SECTION("First section"){
    REQUIRE(project_name::namespace2::subtract(2, 1) == 1);
  }
}

