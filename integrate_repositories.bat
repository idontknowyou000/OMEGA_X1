@echo off
REM OMEGA-PLOUTUS X - REPOSITORY INTEGRATION LAUNCHER
REM ===========================================

echo.
echo 🔥 OMEGA-PLOUTUS X - REPOSITORY INTEGRATION MANAGER 🔥
echo ========================================================
echo.

echo 📥 Step 1: Repository Configuration
echo ================================
echo.
echo Checking repository configurations...
echo.

REM Check if integration manager exists
if not exist "integrated_repositories\integration_manager.py" (
    echo ❌ Integration manager not found!
    echo Please ensure integration_manager.py is in the integrated_repositories folder
    pause
    exit /b 1
)

echo ✅ Integration manager found
echo.

REM Clone and integrate repositories
echo 📥 Step 2: Repository Integration
echo ================================
echo.
cd /d "%~dp0"
call python integrated_repositories\integration_manager.py

echo.
echo 📊 Integration Complete!
echo ================================
echo.
echo Repository integration process has been completed.
echo Check integration_report.json for detailed status.
echo.
echo Press any key to exit...
pause > nul
exit /b 0
