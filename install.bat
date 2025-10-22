@echo off
setlocal enabledelayedexpansion

echo ================================
echo  CMDO Installation Script
echo ================================
echo.

:: Check admin rights (optional)
net session >nul 2>&1
if %errorLevel% == 0 (
    set "INSTALL_DIR=C:\Program Files\cmdo"
    set "SCOPE=system"
) else (
    set "INSTALL_DIR=%LOCALAPPDATA%\cmdo"
    set "SCOPE=user"
)

echo Installing for: %SCOPE%
echo Install directory: %INSTALL_DIR%
echo.

:: Create directory
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"

:: Copy exe
copy /Y cmdo.exe "%INSTALL_DIR%\" >nul
if errorlevel 1 (
    echo Error: Failed to copy cmdo.exe
    pause
    exit /b 1
)

:: Create wrapper bat file
echo @echo off > "%INSTALL_DIR%\cmdo.bat"
echo "%~dp0cmdo.exe" %%* >> "%INSTALL_DIR%\cmdo.bat"

:: Add to PATH
echo Adding to PATH...
powershell -Command "[Environment]::SetEnvironmentVariable('Path', [Environment]::GetEnvironmentVariable('Path', '%SCOPE%') + ';%INSTALL_DIR%', '%SCOPE%')"

echo.
echo ================================
echo  Installation Complete!
echo ================================
echo.
echo Location: %INSTALL_DIR%
echo.
echo IMPORTANT: Please restart your terminal/command prompt
echo Then you can use: cmdo [command]
echo.
pause
