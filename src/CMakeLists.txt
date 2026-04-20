add_library(occt_draw_core STATIC)

target_sources(occt_draw_core
  PRIVATE
    placeholder.cpp
)

target_include_directories(occt_draw_core
  PUBLIC
    "${PROJECT_SOURCE_DIR}/include"
)

target_compile_features(occt_draw_core
  PUBLIC
    cxx_std_17
)
