# occt-draw-core

三维 CAD 几何内核项目。C++ 代码在 Visual Studio 2022 里开发和调试，Wasm 文件用于交给前端加载。

## 开发 C++

用 Visual Studio 2022 打开仓库文件夹：

```txt
File -> Open -> Folder -> D:\work\occt-draw-core
```

不要打开 `build` 目录里的 `.sln` 文件，那些是临时生成文件。

打开后选择顶部配置：

```txt
Build Windows Debug
```

然后点击：

```txt
生成 -> 全部生成
```

## 调试 C++

本地调试入口是：

```txt
cad_kernel_demo
```

在 Visual Studio 里选择 `cad_kernel_demo` 作为启动项，然后按 F5。

这个 demo 会调用核心库里的代码，适合用来验证和调试几何内核。

## 打包 Wasm

Wasm 是给前端项目加载的文件。只有前端需要新的内核文件时，才需要打包。

最简单的方式：

```txt
双击 build-wasm.cmd
```

也可以在 VS Code 终端或 PowerShell 里运行：

```powershell
npm run build:wasm
```

输出文件：

```txt
dist/wasm/cad-kernel.js
dist/wasm/cad-kernel.wasm
dist/wasm/cad-kernel.d.ts
```

`cad-kernel.d.ts` 是给 `occt-draw-web` 使用的 TypeScript 类型说明。

## 常用命令

```powershell
npm run build:native
npm run run:demo
npm run build:wasm
```

`npm run build:native`

和 Visual Studio 里的“生成”作用类似。平时在 Visual Studio 里写代码时，可以不用手动运行它。

`npm run run:demo`

运行本地 demo 程序。主要用于在命令行里快速启动 demo；在 Visual Studio 里调试时，直接选择 `cad_kernel_demo` 后按 F5。

`npm run build:wasm`

打包前端要用的 `cad-kernel.js` 和 `cad-kernel.wasm`。
