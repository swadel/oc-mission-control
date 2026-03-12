@echo off
setlocal

REM Mission Control (robsannaa fork) — Windows-friendly OpenClaw CLI launch
set OPENCLAW_HOME=%USERPROFILE%\.openclaw
set OPENCLAW_BIN=C:\nvm4w\nodejs\node.exe
set OPENCLAW_ENTRY=C:\nvm4w\nodejs\node_modules\openclaw\openclaw.mjs

cd /d %~dp0

REM Use 3333 to avoid colliding with other local apps
npx next dev -H 127.0.0.1 -p 3333 --webpack
