# occt-draw-core

`occt-draw-core` 是二维出图产品的 C++ / Wasm 几何内核项目。

这个仓库的目标不是做完整编辑器，而是基于 OCCT 构建一套可在 Web 端调用的投影与几何能力，为前端出图应用提供稳定、可裁剪的算法内核。

## 项目定位

- 基于 OCCT 构建自定义几何与投影能力
- 编译为 WebAssembly，供前端项目调用
- 重点服务二维出图、投影、轮廓提取、隐藏线等能力
- 不负责页面 UI、画布交互和产品逻辑

## 计划职责

- OCCT 集成与裁剪
- 投影算法封装
- 几何计算接口设计
- Wasm 导出接口
- 供前端调用的稳定数据结构

## 预期输出

未来这个仓库会产出类似下面的运行时文件：

- `projection-engine.wasm`
- `projection-engine.js` 或 `projection-engine.mjs`
- 必要的类型说明或调用示例

## 预期目录

后续预计会逐步整理为这样的结构：

```txt
include/
src/
cmake/
third_party/
tests/
```

## 当前阶段

当前仓库处于初始化阶段，下一步会优先完成：

- C++ 工程骨架
- Emscripten 构建链路
- 最小 Wasm 导出函数
- OCCT 接入验证

## 关联项目

前端项目仓库：

- `occt-draw-web`

它负责界面、画布、交互以及 Wasm 加载与展示。
