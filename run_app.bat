@echo off
echo ======================================================
echo           TaskManagerApp Launcher
echo ======================================================

REM Check for Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python is not installed or not in PATH.
    pause
    exit /b
)

echo [1/3] Installing dependencies...
cd backend
python -m venv venv
call venv\Scripts\activate
pip install fastapi uvicorn pydantic

echo [2/3] Starting Backend Server...
start "TaskManagerApp Backend" cmd /k "call venv\Scripts\activate && uvicorn main:app --reload"

echo [3/3] Opening Frontend Dashboard...
timeout /t 3 /nobreak >nul
start ..\frontend\index.html

echo ======================================================
echo  System is running! 
echo  Backend: http://127.0.0.1:8000
echo  Frontend: Opened in your default browser.
echo ======================================================
pause
