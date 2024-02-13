@echo off
setlocal

:: Check if a directory name is provided
if "%1"=="" (
    echo Please provide a directory name.
    exit /b 1
)

:: Set the directory name from the command line argument
set "directoryName=%1"

:: Create the main directory
mkdir "%directoryName%"

:: Check if the main directory was created successfully
if exist "%directoryName%" (
    :: Create a subdirectory named "final"
    mkdir "%directoryName%\final"

    :: Create a subdirectory named "original"
    mkdir "%directoryName%\original"
    
    :: Create a subdirectory named "working"
    mkdir "%directoryName%\working"
    
    echo Directories created successfully. Main directory: %directoryName%, Subdirectory: final, original, working
) else (
    echo Failed to create the directory.
)

endlocal
