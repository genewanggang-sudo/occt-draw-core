# occt-draw-core

三维 CAD 几何内核工程，基于 C++ / OCCT，目标是同时支持本地 Visual Studio 开发和 WebAssembly 输出。

## 本地开发

1. 用 Visual Studio 打开仓库目录：`D:\work\occt-draw-core`
2. 选择配置：`windows-debug`
3. 点击“生成”或运行：`npm run build:native`

当前还没有可以运行的程序，所以暂时不能直接按 F5。下一步会添加一个 demo 程序，用来在 Visual Studio 里启动和调试内核代码。

## 构建 Wasm

```powershell
npm run build:wasm
```

产物：

```txt
build/wasm-debug/src/cad-kernel.js
build/wasm-debug/src/cad-kernel.wasm
```
