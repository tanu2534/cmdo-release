@echo off
echo ================================
echo  CMDO Installation Script
echo ================================
echo.

:: Set install directory to user's local folder (no admin needed)
set "INSTALL_DIR=%LOCALAPPDATA%\cmdo"

:: Check if cmdo.exe exists in current directory
if not exist "%~dp0cmdo.exe" (
    echo Error: cmdo.exe not found!
    echo Make sure install.bat and cmdo.exe are in the same folder.
    pause
    exit /b 1
)

echo Installing to: %INSTALL_DIR%
echo.

:: Create directory
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"

:: Copy files
echo Copying files...
copy /Y "%~dp0cmdo.exe" "%INSTALL_DIR%\" >nul
if errorlevel 1 (
    echo Error: Failed to copy cmdo.exe
    pause
    exit /b 1
)

if exist "%~dp0cmdo.bat" (
    copy /Y "%~dp0cmdo.bat" "%INSTALL_DIR%\" >nul
)

:: Add to user PATH
echo Adding to PATH...
for /f "skip=2 tokens=3*" %%a in ('reg query HKCU\Environment /v PATH 2^>nul') do set "CURRENT_PATH=%%a %%b"
if not defined CURRENT_PATH set "CURRENT_PATH="

:: Check if already in PATH
echo %CURRENT_PATH% | findstr /i /c:"%INSTALL_DIR%" >nul
if errorlevel 1 (
    setx PATH "%CURRENT_PATH%;%INSTALL_DIR%"
    echo PATH updated successfully!
) else (
    echo Already in PATH, skipping...
)

echo.
echo ================================
echo  Installation Complete!
echo ================================
echo.
echo Installed to: %INSTALL_DIR%
echo.
echo IMPORTANT: 
echo 1. Close this window
echo 2. Open a NEW Command Prompt
echo 3. Type: cmdo --help
echo.
pause
