@echo off
REM Backend Setup and Run Script for Windows
REM This script installs dependencies and starts the FastAPI backend

echo.
echo ========================================
echo  BACKEND SETUP & STARTUP
echo ========================================
echo.

REM Change to backend directory
cd /d "%~dp0backend"

if errorlevel 1 (
    echo ERROR: Could not change to backend directory
    pause
    exit /b 1
)

echo [1/3] Checking Python installation...
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python from https://www.python.org/downloads/
    pause
    exit /b 1
)

echo [2/3] Installing dependencies...
pip install -r requirements.txt --quiet
if errorlevel 1 (
    echo ERROR: Failed to install dependencies
    echo Please check your internet connection and try again
    pause
    exit /b 1
)

echo [3/3] Starting FastAPI backend on http://localhost:8000
echo.
echo ========================================
echo  Backend is running!
echo  - API Docs: http://localhost:8000/docs
echo  - Reload enabled (auto-restart on code changes)
echo ========================================
echo.
echo Press Ctrl+C to stop the server
echo.

REM Start the backend
python -m uvicorn app.main:app --reload --host 0.0.0.0 --port 8000

pause
