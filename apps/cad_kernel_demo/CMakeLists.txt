add_executable(cad_kernel_demo main.cpp)

target_link_libraries(cad_kernel_demo
  PRIVATE
    occt_draw_core
)

target_compile_features(cad_kernel_demo
  PRIVATE
    cxx_std_17
)
