@echo off
setlocal
cd /d "%~dp0"

echo.
echo Chemical Engineering Learning Tools - local site
echo Opening http://127.0.0.1:8001
echo Press Ctrl+C in this window to stop the local server.
echo.

start "" "http://127.0.0.1:8001"
py -m http.server 8001

if errorlevel 1 (
  echo.
  echo The Python launcher was not available.
  echo Trying python...
  python -m http.server 8001
)

pause