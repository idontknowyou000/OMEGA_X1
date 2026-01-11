@echo off
title OMEGA-PLOUTUS X - SECURE LAUNCH SYSTEM
echo ==============================================================
echo 🔥 OMEGA-PLOUTUS X - SECURE LAUNCH SYSTEM 🔥
echo ==============================================================
echo.

:: Check if OMEGA AI Server is running
echo 🔍 Checking OMEGA AI Server status...
tasklist /FI "IMAGENAME eq python.exe" | findstr /I "omega_ai_server.py" >nul
if %ERRORLEVEL% equ 0 (
    echo ✅ OMEGA AI Server is running
) else (
    echo ❌ OMEGA AI Server not found - starting it now...
    start /B python omega_ai_server.py
    timeout /t 3 /nobreak >nul
)

:: Launch REAL MONITOR in client window with safe parameters
echo 🎯 Launching SECURE REAL MONITOR for client window...
start "OMEGA SECURE MONITOR" cmd /k "title OMEGA SECURE MONITOR && python omega_evolution_monitor.py --safe-mode"

:: Wait a bit for monitor to initialize
timeout /t 5 /nobreak >nul

:: Launch OMEGA in separate test window with safe parameters
echo 🧪 Launching OMEGA in secure test window...
start "OMEGA SECURE TEST" cmd /k "title OMEGA SECURE TEST && python omega_ploutus_launcher.py --demo-mode"

echo.
echo 🔥 OMEGA-PLOUTUS X SYSTEM LAUNCHED IN SECURE MODE!
echo.
echo 📊 SECURE MONITOR: Client window with evolution tracking
echo 🧪 SECURE TEST: Demo mode Omega instance for testing
echo.
echo 💀 Both windows running with enhanced security!
echo 🛑 Use Ctrl+C in each window to stop them individually
echo.
echo 🔒 Note: Some security software may still flag Omega processes.
echo 🔒 If you see warnings, you may need to add exceptions for this directory.
