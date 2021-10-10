#include <catch2/catch.hpp>
#include "project_name/namespace1/add.hpp"

TEST_CASE("Test case 1", "[tag1]"){
  SECTION("First section"){
    REQUIRE(project_name::namespace1::add(1, 1) == 2);
  }
}
