#include <catch2/catch.hpp>
#include "project_name/file2.hpp"

TEST_CASE("Test case 2", "[tag2]"){
  SECTION("First section"){
    REQUIRE(project_name::function3() == 0.1);
    REQUIRE(project_name::function4() == 0.2f);
  }
}

