cmake_minimum_required(VERSION 3.20)

project(
  occt_draw_core
  VERSION 0.1.0
  DESCRIPTION "C++ geometry core for OCCT-based 2D projection and WebAssembly export"
  LANGUAGES CXX
)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

include(CTest)

add_subdirectory(src)

if(BUILD_TESTING)
  add_subdirectory(tests)
endif()
