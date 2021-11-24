#include <catch2/catch.hpp>
#include "lib1/namespace1/add.hpp"
#include "lib1/namespace2/subtract.hpp"

TEST_CASE("Test case 1", "[tag1]"){
  SECTION("First section"){
    int i = 1;
    int j = 2;
    REQUIRE(lib1::namespace1::add(i, j) == 3);
    REQUIRE(lib1::namespace2::subtract(i, j) == -1);
  }
}
