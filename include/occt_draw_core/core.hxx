#pragma once

namespace occt_draw_core {

struct BuildInfo {
  static constexpr const char* kProjectName = "occt-draw-core";
  static constexpr const char* kVersion = "0.1.0";
};

const char* project_name();

}  // namespace occt_draw_core
