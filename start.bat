@echo off
title ARIA Radiology Workbench — King's College Hospital
echo.
echo  Starting ARIA Radiology Workbench...
echo.

cd /d E:\Claude\Dev\aria

set OPENAI_API_KEY=

echo  Starting backend...
start "ARIA Backend" cmd /k "cd /d E:\Claude\Dev\aria && call venv\Scripts\activate && set OPENAI_API_KEY=%OPENAI_API_KEY% && python backend\main.py"

echo  Starting frontend...
start "ARIA Frontend" cmd /k "cd /d E:\Claude\Dev\aria\frontend && python -m http.server 3000"

echo  Waiting for services...
timeout /t 4 /nobreak >nul

echo  Opening browser...
start chrome http://localhost:3000

echo.
echo  Login: david / kings2024
echo.
pause
