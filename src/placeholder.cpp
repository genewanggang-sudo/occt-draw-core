#include "occt_draw_core/core.hxx"

namespace occt_draw_core {

const char* project_name() {
  return BuildInfo::kProjectName;
}

int version_major() {
  return BuildInfo::kVersionMajor;
}

}  // namespace occt_draw_core
