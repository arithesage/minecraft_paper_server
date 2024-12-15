@ECHO OFF

SET ROOT=%~dp0

SET SERVER_PATH=%ROOT:~,-1%
SET SERVER_EXEC=paper-1.20.1-31.jar


IF NOT EXIST "%SERVER_PATH%\enabled" (
    ECHO "Server disabled. Rename the 'disabled' file to 'enabled' to enable it.."

) ELSE (
    GOTO :start
)


:start
IF EXIST "%SERVER_PATH%\enabled" (
    echo "Starting server..."
    echo.

    java -jar "%SERVER_PATH%\%SERVER_EXEC"

    goto :start
)

echo "Terminado."
echo.

PAUSE
