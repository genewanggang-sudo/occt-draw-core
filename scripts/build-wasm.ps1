$ErrorActionPreference = "Stop"

$repoRoot = Resolve-Path "$PSScriptRoot\.."
$emsdkEnv = "D:\tools\emsdk\emsdk_env.ps1"
$ninjaDir = "D:\tools\VisualStudio\Common7\IDE\CommonExtensions\Microsoft\CMake\Ninja"
$wasmBuildDir = Join-Path $repoRoot "build\wasm-debug\src"
$wasmDistDir = Join-Path $repoRoot "dist\wasm"
$wasmTypesFile = Join-Path $repoRoot "types\cad-kernel.d.ts"

if (!(Test-Path $emsdkEnv)) {
  throw "Emscripten environment script not found: $emsdkEnv"
}

. $emsdkEnv | Out-Null

if (Test-Path $ninjaDir) {
  $env:PATH = "$ninjaDir;$env:PATH"
}

Push-Location $repoRoot
try {
  cmake --preset wasm-debug
  cmake --build --preset wasm-debug

  New-Item -ItemType Directory -Force $wasmDistDir | Out-Null
  Copy-Item (Join-Path $wasmBuildDir "cad-kernel.js") $wasmDistDir -Force
  Copy-Item (Join-Path $wasmBuildDir "cad-kernel.wasm") $wasmDistDir -Force
  Copy-Item $wasmTypesFile $wasmDistDir -Force
}
finally {
  Pop-Location
}
