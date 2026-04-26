$ErrorActionPreference = "Stop"

$repoRoot = Resolve-Path "$PSScriptRoot\.."
$emsdkEnv = "D:\tools\emsdk\emsdk_env.ps1"
$ninjaDir = "D:\tools\VisualStudio\Common7\IDE\CommonExtensions\Microsoft\CMake\Ninja"

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
}
finally {
  Pop-Location
}
