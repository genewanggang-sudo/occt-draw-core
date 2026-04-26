#include "occt_draw_core/core.hxx"

namespace occt_draw_core {

const char* project_name() {
  return BuildInfo::kProjectName;
}

const char* engine_name() {
  return BuildInfo::kEngineName;
}

int version_major() {
  return BuildInfo::kVersionMajor;
}

}  // namespace occt_draw_core
