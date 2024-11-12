cmake_minimum_required(VERSION 3.22 FATAL_ERROR)
include(cmake/policy.cmake)

policy_new(CMP0174 NEW)

project(MainApp VERSION 0.0.1 LANGUAGES CXX)

#################################
# Find other libs here

#################################

file(GLOB_RECURSE MAIN_SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)
file(GLOB_RECURSE MAIN_HEADERS ${CMAKE_CURRENT_SOURCE_DIR}/src/*.hpp)

source_group("src" FILES ${MAIN_SOURCES})
source_group("include" FILES ${MAIN_HEADERS})

add_executable(${PROJECT_NAME} ${MAIN_SOURCES} ${MAIN_HEADERS})