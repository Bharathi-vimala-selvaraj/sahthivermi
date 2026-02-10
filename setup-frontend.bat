@echo off
REM Frontend Setup and Run Script for Windows
REM This script installs dependencies and starts the React+Vite frontend

echo.
echo ========================================
echo  FRONTEND SETUP & STARTUP
echo ========================================
echo.

REM Change to frontend directory
cd /d "%~dp0frontend"

if errorlevel 1 (
    echo ERROR: Could not change to frontend directory
    pause
    exit /b 1
)

echo [1/3] Checking Node.js installation...
node --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Node.js is not installed or not in PATH
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

echo [2/3] Installing dependencies...
npm install --legacy-peer-deps
if errorlevel 1 (
    echo ERROR: Failed to install dependencies
    echo Please check your internet connection and try again
    pause
    exit /b 1
)

echo [3/3] Starting Vite development server on http://localhost:5173
echo.
echo ========================================
echo  Frontend is running!
echo  - URL: http://localhost:5173
echo  - Hot reload enabled (auto-refresh on code changes)
echo ========================================
echo.
echo Press Ctrl+C to stop the server
echo.

REM Start the frontend
npm run dev

pause
