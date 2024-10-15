cmake_minimum_required(VERSION 3.0)

project(CatchTheCandies)

find_package(OpenCV REQUIRED)

# Specify source files located in the try directory
set(SOURCES
    try/main.cpp
    try/catchthecandies.cpp
)

# Create the executable
add_executable(CatchTheCandies ${SOURCES})

# Link OpenCV libraries
target_link_libraries(CatchTheCandies ${OpenCV_LIBS})
