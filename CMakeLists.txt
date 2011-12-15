PROJECT(lms100-server)
CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

################################################################################
# prepare build system
################################################################################
# cmake boost support
SET(Boost_USE_STATIC_LIBS ON)
FIND_PACKAGE(Boost 1.39 COMPONENTS regex unit_test_framework REQUIRED)
INCLUDE_DIRECTORIES(${Boost_INCLUDE_DIRS})
INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIRECTORY})

################################################################################
# testing
################################################################################
ENABLE_TESTING()

## test lms100 functions
ADD_EXECUTABLE(lms100-test lms100-test.cpp lms100.cpp)
ADD_TEST(lms100 lms100-test)
SET_TARGET_PROPERTIES(lms100-test PROPERTIES COMPILE_FLAGS "-DTESTING")
TARGET_LINK_LIBRARIES(lms100-test
  ${Boost_UNIT_TEST_FRAMEWORK_LIBRARY}
  ${Boost_REGEX_LIBRARY})

