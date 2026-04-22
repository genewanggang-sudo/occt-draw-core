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

if(EMSCRIPTEN AND OCCT_DRAW_CORE_ENABLE_WASM)
  add_executable(projection_engine wasm_entry.cpp)

  target_link_libraries(projection_engine
    PRIVATE
      occt_draw_core
  )

  target_include_directories(projection_engine
    PRIVATE
      "${PROJECT_SOURCE_DIR}/include"
  )

  set_target_properties(projection_engine
    PROPERTIES
      OUTPUT_NAME "projection-engine"
      SUFFIX ".js"
  )

  target_link_options(projection_engine
    PRIVATE
      "SHELL:-s EXPORTED_FUNCTIONS=['_occt_draw_core_project_name','_occt_draw_core_version_major']"
      "SHELL:-s EXPORTED_RUNTIME_METHODS=['cwrap','UTF8ToString']"
      "SHELL:-s MODULARIZE=1"
      "SHELL:-s EXPORT_ES6=1"
      "SHELL:-s ALLOW_MEMORY_GROWTH=1"
      "SHELL:-s ENVIRONMENT=web"
      "SHELL:-s NO_EXIT_RUNTIME=1"
    )
endif()
