@echo off
title OMEGA-PLOUTUS X - REAL MONITOR & TEST WINDOW LAUNCHER
echo ==============================================================
echo 🔥 OMEGA-PLOUTUS X - REAL MONITOR & TEST WINDOW LAUNCHER 🔥
echo ==============================================================
echo.

:: Check if OMEGA AI Server is running
echo 🔍 Checking OMEGA AI Server status...
tasklist /FI "IMAGENAME eq python.exe" | find /I "omega_ai_server.py" >nul
if %ERRORLEVEL% equ 0 (
    echo ✅ OMEGA AI Server is running
) else (
    echo ❌ OMEGA AI Server not found - starting it now...
    start /B python omega_ai_server.py
    timeout /t 3 /nobreak >nul
)

:: Launch REAL MONITOR in client window
echo 🎯 Launching REAL MONITOR for client window...
start "OMEGA REAL MONITOR" cmd /k "title OMEGA REAL MONITOR && python omega_evolution_monitor.py"

:: Wait a bit for monitor to initialize
timeout /t 5 /nobreak >nul

:: Launch OMEGA in separate test window
echo 🧪 Launching OMEGA in separate test window...
start "OMEGA TEST WINDOW" cmd /k "title OMEGA TEST WINDOW && python omega_ploutus_launcher.py"

echo.
echo 🔥 OMEGA-PLOUTUS X SYSTEM LAUNCHED SUCCESSFULLY!
echo.
echo 📊 REAL MONITOR: Client window with evolution tracking
echo 🧪 TEST WINDOW: Separate Omega instance for testing
echo.
echo 💀 Both windows are now running independently!
echo 🛑 Use Ctrl+C in each window to stop them individually
