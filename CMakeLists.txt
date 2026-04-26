cmake_minimum_required(VERSION 3.20)

project(
  occt_draw_core
  VERSION 0.1.0
  DESCRIPTION "C++ geometry kernel for OCCT-based 3D CAD and WebAssembly export"
  LANGUAGES CXX
)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

option(OCCT_DRAW_CORE_ENABLE_TESTING "Enable test targets and CTest integration" OFF)
option(
  OCCT_DRAW_CORE_ENABLE_WASM
  "Build the minimal WebAssembly export target when using Emscripten"
  ON
)

add_subdirectory(src)

if(NOT EMSCRIPTEN)
  add_subdirectory(apps/cad_kernel_demo)
endif()

if(OCCT_DRAW_CORE_ENABLE_TESTING)
  include(CTest)

  if(BUILD_TESTING)
    add_subdirectory(tests)
  endif()
endif()
