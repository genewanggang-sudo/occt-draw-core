@echo off
setlocal
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\build-wasm.ps1"
exit /b %ERRORLEVEL%
