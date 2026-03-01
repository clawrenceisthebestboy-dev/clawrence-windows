@echo off
:: Auto-elevate to admin if not already
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Requesting admin permission...
    powershell -Command "Start-Process cmd -ArgumentList '/c \"%~f0\"' -Verb RunAs"
    exit /b
)

title Installing Clawrence...
color 0A
cls
echo.
echo   ============================================
echo    Clawrence Installer
echo    Your personal AI assistant
echo   ============================================
echo.
echo   Installing... please wait (about 2 minutes)
echo.

:: Download and run the PowerShell installer
powershell -ExecutionPolicy Bypass -Command "& { $ProgressPreference='SilentlyContinue'; irm 'https://clawrenceisthebestboy-dev.github.io/clawrence-windows/install.ps1' | iex }"

echo.
echo   Done! Open Telegram and message @jutes69_bot
echo.
pause
