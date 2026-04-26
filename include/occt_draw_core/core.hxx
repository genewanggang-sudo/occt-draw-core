#pragma once

namespace occt_draw_core {

struct BuildInfo {
  static constexpr const char* kProjectName = "occt-draw-core";
  static constexpr const char* kEngineName = "cad-kernel";
  static constexpr const char* kVersion = "0.1.0";
  static constexpr int kVersionMajor = 0;
};

const char* project_name();
const char* engine_name();
int version_major();

}  // namespace occt_draw_core
