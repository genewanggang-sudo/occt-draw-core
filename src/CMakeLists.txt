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
  add_executable(cad_kernel_wasm wasm_entry.cpp)

  target_link_libraries(cad_kernel_wasm
    PRIVATE
      occt_draw_core
  )

  target_include_directories(cad_kernel_wasm
    PRIVATE
      "${PROJECT_SOURCE_DIR}/include"
  )

  set_target_properties(cad_kernel_wasm
    PROPERTIES
      OUTPUT_NAME "cad-kernel"
      SUFFIX ".js"
  )

  target_link_options(cad_kernel_wasm
    PRIVATE
      "SHELL:-s EXPORTED_FUNCTIONS=['_occt_draw_core_project_name','_occt_draw_core_engine_name','_occt_draw_core_version_major']"
      "SHELL:-s EXPORTED_RUNTIME_METHODS=['cwrap','UTF8ToString']"
      "SHELL:-s MODULARIZE=1"
      "SHELL:-s EXPORT_ES6=1"
      "SHELL:-s ALLOW_MEMORY_GROWTH=1"
      "SHELL:-s ENVIRONMENT=web"
      "SHELL:-s NO_EXIT_RUNTIME=1"
    )
endif()
