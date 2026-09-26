@echo off
setlocal
cd /d "%~dp0"
echo.
echo Chemical Engineering Learning Tools - local site
echo Opening http://127.0.0.1:8000
echo Press Ctrl+C in this window to stop the local server.
echo.
start "" "http://127.0.0.1:8000"
py -m http.server 8000
if errorlevel 1 (
  echo.
  echo The 'py' launcher was not available. Trying 'python'...
  python -m http.server 8000
)
pause
