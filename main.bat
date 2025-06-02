@echo off
setlocal enabledelayedexpansion

echo 🔍 Searching for .zip files recursively in: %cd%

:: Loop through all zip files in current and subdirectories
for /r %%f in (*.zip) do (
    echo -----------------------------------------------------
    echo 📦 Extracting: %%f
    
    powershell -nologo -noprofile -command "Expand-Archive -LiteralPath '%%f' -DestinationPath '%%~dpf' -Force"
    
    if exist "%%f" (
        echo ❌ Deleting zip: %%f
        del /f /q "%%f"
    )
)

echo.
echo ✅ All zip files have been extracted *in-place* and deleted.
pause
