@echo off
REM Telegram Bot Setup and Run Script for Windows
REM This script installs dependencies and starts the Telegram bot

echo.
echo ========================================
echo  TELEGRAM BOT SETUP & STARTUP
echo ========================================
echo.

REM Change to telegram-bot directory
cd /d "%~dp0telegram-bot"

if errorlevel 1 (
    echo ERROR: Could not change to telegram-bot directory
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

echo [3/3] Starting Telegram bot
echo.
echo ========================================
echo  Bot is running!
echo  - Listening for messages from Telegram
echo  - Connect with @sakthi_vermi on Telegram
echo ========================================
echo.
echo Press Ctrl+C to stop the bot
echo.

REM Start the bot
python bot.py

pause
