#include "occt_draw_core/core.hxx"

extern "C" {

const char* occt_draw_core_project_name() {
  return occt_draw_core::project_name();
}

int occt_draw_core_version_major() {
  return occt_draw_core::version_major();
}

}
