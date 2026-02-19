@echo off
echo ==========================================
echo   EMAIL HUNTER PRO - Starting...
echo ==========================================
echo.

:: Check Python
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python not found!
    echo Python install: https://python.org/downloads
    pause
    exit
)

:: Install dependencies
echo Installing dependencies...
pip install -r requirements.txt -q

echo.
echo ==========================================
echo   Starting app...
echo   Browser mein open hoga: http://localhost:5000
echo   For stopping app: Ctrl+C
echo ==========================================
echo.

:: Open browser automatically after 2 seconds
start "" timeout /t 2 >nul
start "" "http://localhost:5000"

python app.py
pause
