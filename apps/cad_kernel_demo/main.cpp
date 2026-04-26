#include <iostream>

#include "occt_draw_core/core.hxx"

int main() {
  std::cout << "Project: " << occt_draw_core::project_name() << '\n';
  std::cout << "Engine: " << occt_draw_core::engine_name() << '\n';
  std::cout << "Version major: " << occt_draw_core::version_major() << '\n';
  return 0;
}
