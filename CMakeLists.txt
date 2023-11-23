# States that CMake required version must be greater than 2.6
cmake_minimum_required(VERSION 2.6)
# Project name is not mandatory, but you should use it
project(test)


# Some flags for CXX
set(CMAKE_CXX_FLAGS "-Wall -std=c++0x -fPIC")
set(CMAKE_CXX_FLAGS_DEBUG "-O0 -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -DNDEBUG")


include_directories(${CMAKE_SOURCE_DIR}/include)
link_directories(${CMAKE_SOURCE_DIR}/lib)

###############################################################################
# Find boost packages
find_package( Boost 1.34 COMPONENTS filesystem system REQUIRED)
link_directories ( ${Boost_LIBRARY_DIRS} )
include_directories ( ${Boost_INCLUDE_DIRS} )
###############################################################################
# Find eigen packages
# find_package(Eigen3 REQUIRED)
# link_directories ( ${EIGEN3_LIBRARY_DIRS} )
# include_directories(${EIGEN3_INCLUDE_DIR})


# add_executable(robotExecuteTrajectory robotExecuteTrajectory.cpp runSimulationThrowBall.cpp)
# target_link_libraries(robotExecuteTrajectory dmp functionapproximators dynamicalsystems ${Boost_LIBRARIES})
# install(TARGETS robotExecuteTrajectory DESTINATION bin)

add_executable(test test.cpp runSimulationThrowBall.cpp)
target_link_libraries(test dmp dynamicalsystems functionapproximators ${Boost_LIBRARIES})

