.PHONY: debug
debug:
		cmake -DGLFW_BUILD_DOCS=OFF -DGLFW_INSTALL=OFF -DGLFW_BUILD_EXAMPLES=OFF -D CMAKE_CXX_COMPILER=g++ -D CMAKE_EXPORT_COMPILE_COMMANDS=1 -D CMAKE_BUILD_TYPE="Debug" -S . -B build/debug/
		cp build/debug/compile_commands.json .
		cmake --build ./build/debug

.PHONY: release
release:
		cmake -DGLFW_BUILD_DOCS=OFF -DGLFW_INSTALL=OFF -DGLFW_BUILD_EXAMPLES=OFF -D CMAKE_CXX_COMPILER=g++ -D CMAKE_EXPORT_COMPILE_COMMANDS=1 -D CMAKE_BUILD_TYPE="Release" -S . -B build/release/
		cp build/release/compile_commands.json .
		cmake --build ./build/release

.PHONY: test-debug
test-debug: debug
		cmake -D CMAKE_CXX_COMPILER=g++ -D PROJECT_BUILD_TESTS="ON" -D CMAKE_BUILD_TYPE="Debug" -S . -B tests/build/
		cmake --build ./tests/build
		./tests/build/tests/project_name-tests -s -r compact

.PHONY: test-release
test-release: release
		cmake -D PROJECT_BUILD_TESTS="ON" -D CMAKE_BUILD_TYPE="Release" -S . -B tests/build/
		cmake --build ./tests/build
		./tests/build/tests/project_name-tests -s -r compact

.PHONY: examples-debug
examples-debug: debug
		cmake -D PROJECT_BUILD_EXAMPLES="ON" -D CMAKE_BUILD_TYPE="Debug" -S . -B examples/build/
		cmake --build ./examples/build

.PHONY: examples-release
examples-release: release
		cmake -D PROJECT_BUILD_EXAMPLES="ON" -D CMAKE_BUILD_TYPE="Release" -S . -B examples/build/
		cmake --build ./examples/build

.PHONY: clean-debug
clean-debug:
		rm -rf build/debug/*

.PHONY: clean-release
clean-release:
		rm -rf build/release/*

.PHONY: clean-test
clean-test:
		rm -rf tests/build/*

.PHONY: clean-examples
clean-examples:
		rm -rf examples/build/*

.PHONY: clean-all
clean-all:
		rm -rf build/debug/*
		rm -rf build/release/*
		rm -rf tests/build/*
		rm -rf examples/build/*

